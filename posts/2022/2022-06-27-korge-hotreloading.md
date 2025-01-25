---
title: Implementing hot reloading in KorGE
permalink: /korge-hotreloading/
sponsor_tier: 5
author: ""
category: ""
date: 2022-06-27T00:00:00Z
tags:
  - tech
discord_sent: true
---
![[7001b1c1-a97a-4309-88cd-8d359b0a2bd1-e10b1275-f016-4083-8dcf-ea23c7c37845-d09c7c27-0f0f-49b9-920d-7fca6ccc0e86-hotreload.png]]

Last week I managed to get hot reloading working in KorGE. This is pretty exciting because it allows to write code and
see it reflected visually almost immediately, something really appreciated in graphics development, and this will allow
to iterate much faster and learn KorGE faster too. The first PoC was implemented super quickly, and I was really
impressed how fast the PoC was implemented. Still I faced some issues, and I iterated a bit before getting something
really responsive. This post explains the issues I faced and the ideas for the future to improve it further.

---

<iframe width="560" height="315" src="https://www.youtube.com/embed/cEbONN41Sa0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The first thing I did was to determine how to do reloading of classes, and where to plug it in the application, so it
worked. One option was to do some ClassLoader magic, but then I saw a thing called JavaAgent that supports
instrumenting classes. So I decided to create a Java Agent as a first try. The java agent is something you specify
either attaching to a running JVM, or before it starts passing it as an argument to the vm. So I created a gradle
module generating a jar, that I could pass later when running the sandbox module, and in the KorGE gradle plugin.

Initially I in the java agent I did that the agent reloaded a specific class every several seconds, and then executed a
code in the application triggering a reload event. Then inside scene containers I subscribed to that event and forced
reloading the same scene again. So ran the application with the agent, and then manually triggered s kotlin build. It
worked pretty well!

With that working, I decided to run in a separate terminal the gradle command to build the JVM classes in continuous
mode: `./gradlew -t` or `./gradlew —continuous`. Then I tried and effectively it refreshed after 10 seconds or so. That
was too much time, and only working for a single class. The first thing I noticed is that in continuous mode, it took
too much time for gradle to detect source code changes on my Mac machine, so it seems that the old problem of the JVM
doing polling for file watching was still there. I investigated and know what? It seems they fixed it recently by using
a separate code for that instead of the JVM implementation! I was using `7.4.2` that was the latest version at the
time of writing, so I tried a `7.5-rc-2`. And the fix was there! Know the changes were detected much quicker. Still it
took a lot of time each run to configure all the modules, so it was still pretty slow. Also, the every-5-seconds class
refresh was adding time for getting fast feedback.

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-9e2ac398-ff1f-4666-849b-b3773ba30628-i-hotreload-hotreload1.svg)

So after solving this, it was time to convert the proof of concept into something more generic. So I changed the timer,
into a proper file watching using the java default implementation, I passed the paths where the .class files were
being generated to the agent via gradle, and I used a high refreshing rate. But still pooling, so it was better but
still it was taking a couple of seconds to detect modified classes. Also, the gradle configuration in continuous mode
was slow and took a few seconds each time it recompiled, though I expected final projects with fewer modules to run
faster, so I ignored that for now.

One of the problems I faced with doing the watching is that some files were modified sometimes a couple of times, or
that sometimes the file watcher notifier detected some files in one batch and others later. So I had to wait an
arbitrary amount of time, like half a second to avoid refreshing twice or having to wait even more.

I was not satisfied with that. We were introducing latency to several steps, and I wanted to reduce the feedback time
to the very minimum. To avoid that I thought that I could notify the app when the compilation finished and do the
refreshing just by then. To simplify that, I decided to try UDP. Sending a packet with the time before compilation, so
it could detect files changed in that time without file watching. Like pooling but at the right time and with s not
that big amount of folders/files since it only included classes from the final module. And not requiring something
super complex.

When I tried UDP I was getting a null pointer exception every time I tried inside the gradle daemon. I don't really
know the reason, maybe security, but was not able to get it working. So I used the standard JVM HTTP server and HTTP
client, to create an HTTP server on the JVM agent, and to notify the server from the gradle build by doing an HTTP
request. It worked. And times were better. Now the only main performance issue was configuration time in the continuous
mode. I investigated and tried configuration cache. When I tried it I got several errors that prevented it from
working (like using the project instance) after configuration time. After some adjustments I got it working! And after
that the times were pretty good.

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-8948487b-ea7d-4f65-bbda-f5e12100a27d-i-hotreload-hotreload2.svg)

Now it works awesomely, though when applying the JetPack Compose plugin, compilation times are not that great. Maybe it
doesn't support incremental yet?. In any case, not a big issue, since it will eventually improve.

Now the problem is that the classes reloaded by the java agent, cannot add or remove new methods or kotlin properties,
so it works nicely to do stuff in an existing method but beyond that you have to relaunch the app. So this approach
will need some work.

I will have to investigate the class loader approach. My main idea is to create two levels of class loaders. One that
load classes from the `com.soywiz.korge` package, and one in front loading everything else and try to close or recreate
a new class loader while keeping KorGE classes running and alive. Not sure which problems or performance issues we
will face, but this should allow to add new/remove methods and properties. So maybe a combination of both approaches
could work: getting fast feedback when updating an existing method, and a slightly worse reloading performance when
adding methods, but still reloading without relaunching.

And after that, we could investigate serializing the state to reuse it between refreshes. Maybe we can annotate the
properties we want to persist to avoid crashes from persisting everything

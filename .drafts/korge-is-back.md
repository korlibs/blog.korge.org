---
layout: post
title: KorGE now is 9000, current progress, and roadmap to KorGE 5.0
notion_page_id: 95e5f09b-5500-4e24-a2a0-e740842917ee
permalink: /korge-is-back/
sponsor_tier: null
author: soywiz
category: ''
date: 2023-09-16T00:00:00Z
feature_image: /images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-bbfcde27-318f-47ee-9b8e-3cbb816d2ffe-over9000_%281%29.jpg
tags: []
---

Hey there 👋 It is soywiz.

You know, sometimes you have to step back to get some clarity. Specially after having a so-so summer with personal
circumstances.

First of all, I want to announce that KorGE
[has officially reached level 9000+](https://blog.korge.org/presenting-korgetaz#:~:text=your%20company%20must%20be%20level%209000%20or%20greater)
:

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-8a31ad03-7e03-4976-a659-316f6ca68151-Screenshot_2023-09-11_at_13.59.04.jpg)

Secondly, like all the important things in life, stuff requires a lot of effort and patience.

Third: I still need money for living, eat some food and pay bills.



With this in mind, I have managed to figure out some stuff to be able to continue, at a different pace, with different
priorities. And I would like to announce a few things regarding that.

## Focus

Having to maintain all the korlibs for all the kotlin targets possible was time-consuming for several reasons:

**Problem:**

* CI times were long, so each commit took like 40~60 minutes to process by CI. Fast-paced development is critical when your resources are limited.
* People trying to use the libraries, integrate stuff with some targets. That was also time-consuming.
* More code, more platforms, more bugs.
* Not really necessary, except for getting “small executables”
* Problem: I split the code from the very beginning into libraries so the community could have libraries in an empty ecosystem. I helped bootstrapping the Kotlin ecosystem. I was happy. Some people trusted this. Also the code is still useful.

**Solution:**

* Reduce the number of targets, the number of libraries and artifacts. While keeping people using the libraries covered.

What's the plan?

* I did a prototype: <https://github.com/korlibs/korge5-prototype>
* KorGE will support Android, web via JS and WASM, desktop platforms via JVM and maybe JS/WASM (Deno) with FFI and iOS and tvOS with K/N.
* KorGE will eventually support console and homebrew targets via the WASM target with WASI or custom + wasm2c + SDL so Kotlin/Native won't be needed here

## WASM

WASM is the present and will be more prominent in the future once GC reaches all the browsers and engines (including
Deno). KorGE wants to be relevant and cover cool use-cases.

WASM can already be run in lots of places, and you can compile C libraries and use them. I have been working hard the
past few weeks and made this a reality. Now you can run WASM code in all the KorGE targets.

**How does this work?**

* Android: we can use either a WebView or a JS engine to run WASM. If WASM is not supported we can use a polyfill to make it available as long as we have the JS engine.
* JVM: I have been working on a JIT just in time module for KorGE that converts WASM bytecode into JVM bytecode on the fly (Just In Time). With a really good performance.
* JavaScript: We can run it directly, or with a Polyfill
* WASM: we can communicate with JS to cover the same cases as JavaScript, or if we are in WASI, we can use the “Other targets” approach
* iOS / K/N: JavaScriptCore supports running WASM, in the simulator where it is not available or for older versions, we can use a JS Polyfill
* Other targets: deno/node-based proxy, interpreter or AOT

**What scenarios does this enable?**

I have already for example simplified MP3 decoding by using minimp3 compiled into C to wasm with very little Kotlin
code.

I have already loaded WEBP images via WASM.

We can do the same for AVIF giving it support for all the targets for this format today.

We can include ffmpeg and support videos on all the targets, and then optimize decoding for specific targets.

In general we can support formats or code not interacting with the operating system. We can also include physics
libraries compiled to WASM, etc.

All this WASM work introduced some knowledge on the Wasm ecosystem we can reuse to make the required AOT tooling to
support console and homebrew platforms a thing.

## FFI

I have been working on unifying FFI to work on JVM (JNA) and Deno (integrated Deno FFI) the same way. This will allow
to write common code that interacts with the operating system easily. Since now we don't have K/N desktop targets, this
will be easier.

We will be able to integrate for example with the Steam API, DLLs/dylibs people would need.

We can create standalone apps via integrating a JRE or a single executable by using Deno

## Monetisation & Growth

To keep KorGE alive for the long-term we should be sustainable.

The good thing is that right now KorGE development happened without any kind of investment until now. So we don't have
specific pressure other than having a better pace. But also, there are areas like documentation, or social media etc.
that didn't have enough attention from myself nor from contributors.

I don't believe changing the pricing as Unity recently did is a good thing to do.

KorGE is going to continue being OpenSource and free and it has been a priority from its inception. But it needs more
work from other people that covers areas I didn't have time or knowledge to cover. And there will be paid optional
things like premium asserts or new libraries, and maybe AI-related stuff, but not affecting the usage of the engine
itself.

I'm going to start working elsewhere, and will invest part of my salary into partially hiring some people, doing
marketing and going to Video Game related events. It likely won't be enough, but with people's donations, maybe company
sponsorships or even investors, that could be an option.

Since I don't know what things will happen in the future, we will adapt to the circumstances.



Hiring will be likely part-time and from emerging places especially in the beginning since there won't have a lot of
money to invest initially:

* Tech Writing: <https://www.notion.so/soywiz/Freelancer-Technical-Writer-for-KorGE-03ab46f0e121434fbec180627ba9de9b>
* Social Media Manager
* Marketing & Copy
* Making Games and Samples



If you know people from emerging markets that could cover those positions, please let me know via discord or
soywiz@gmail.com

If you are an investor and want me to show you the KorGE pitch-deck with specific plans, contact me: soywiz@gmail.com

If your company want to sponsor the project, be promoted in KorGE websites and have extra support, contact me:
soywiz@gmail.com

If you want to donate to the project: <https://github.com/sponsors/soywiz/>

If you have know-how or know someone in marketplaces that is willing to coach me a bit, that would be super useful:
soywiz@gmail.com

If you have ideas for getting money to keep the project alive, feel free to share them with me.

## Final words

KorGE5 will be released in the coming weeks with WASM, FFI support, a cleaner structure and reduced targets as
explained before.

Korlibs4 and all the libraries will continue existing and will be maintained by the community.

Once released, and with the dungeon explorer tutorial finished, I plan to do a new Game JAM, since stuff will be more
polished than in the last JAM.

Since I will join another project one way or another, I will expend less time myself on KorGE, but hopefully will be
able to coordinate some people in my spare time, so the product pace will improve over the time.
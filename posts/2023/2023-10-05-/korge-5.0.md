---
title: "KorGE 5.0 Released! 🎉🎊 "
permalink: /korge-5.0/
sponsor_tier: 
author: korge
category: Releases
date: 2023-10-05T00:00:00Z
tags:
  - release
---
![[7001b1c1-a97a-4309-88cd-8d359b0a2bd1-8b61b7f5-d6e2-4186-9366-1ffbe932c9cb-5.0.avif]]

Today we are releasing KorGE 5.0! It comes with some new features and breaking changes.

## WASM module support

Now KorGE provides a way to run WASM code on JVM, JS, Android and iOS. Enabling new scenarios. For example: KorGE now
supports loading WEBP images via WASM. We will be able to do the same for other complex image formats like AVIF, embed
a ffmpeg player, or embed a physics engine integrated with a ECS approach.



## FFI support in common code

Now there is a way to do (Foreign Function Interface) in JVM and JS (Deno) in common code for desktop. This will allow
to integrate with some APIs like Steam eventually on the Store.



## TimeSpan aliases kotlin.time.Duration



The korlibs started before Kotlin Multiplatform was a thing, and Klock was available in an empty ecosystem. Now that
Kotlin provides its own Duration class that is pretty similar, TimeSpan just typealiases to it. Now it is easier to
interop with other code using Duration.



## KProject now integrated into KorGE

KorGE now publishes its own KProject gradle plugin. The idea is that kproject required the same Kotlin version as KorGE
to work properly, and this is a way to do that while also simplifying the workflow.

There is a new gradle template. You can grab it from the IntelliJ template.



## Double 2D Geometry



We have expanded the geometry package. Doing some cleanups and changes.

We have rolled back the Vector classes from Float to Double again for 2D to get extra precission. While also providing
Float variants.

3D still uses Float variants.



## Some package changes

The korlibs.memory package was split into several packages.

Things like String.format, umod and bit manipulation that were duplicated have been unified in a single package.

## Targets and Artifacts

The first thing to notice is that we have reduced the number of targets and artifacts to get more focus and reduce
build and mainteinance times.



**Current targets:**

* JVM, JS, iOS, tvOS and Android



**We have removed:**

* Desktop K/N targets: windows, linux, mac.



**We have temporarily disabled:**

* WASM target is currently disabled until kotlinx.coroutines and kotlinx.serialization official versions are released for it.



K/N mingwX64 performance was subpar to other K/N targets and didn't meet. Maintaining desktop targets was also
time-consuming and had their own bugs.

In desktop it is possible to embed a JRE, and eventually JS/WASM targets will fully support Deno.

Eventually the WASM target will support wasm2c and we will be able to generate native executables from C using SDL to
any potential target.



Packages:



Traditionally korlibs were published as `klock`, `kds`, `kmem`, `kbignum`, `klogger`, `korio`, `korma`, `korim`,
`korau`, `korte`, `korgw`, `korge`…

Now we have unified them into three: `korge-foundation`, `korge-core` and `korge`.

To keep people using the old artifact structure covered, we have split the repo into two:

* <https://github.com/korlibs/korge>
* <https://github.com/korlibs/korlibs4>

## IntelliJ plugin

There is a v4.0.4 version of the IntelliJ plugin in review that is expected to be available in the coming days. That
version is necessary to access the store and other KorGE functionality for 5.0 projets.

In the meantime you can
[grab it from here](https://github.com/korlibs/korge-intellij-plugin/releases/download/v4.0.4/KorgePlugin-4.0.4.zip).



## New documentation!

There is a new documentation website. Hoepfully much cleaner than before. We will update the content to 5.0 over the
time. Now you can provide feedback on pages, and search and navigate to the store packages.

<https://docs.korge.org/getting-started/>

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-d2b89ce9-6bdb-4763-a1c4-e9c0d0cb91f8-Untitled.png)
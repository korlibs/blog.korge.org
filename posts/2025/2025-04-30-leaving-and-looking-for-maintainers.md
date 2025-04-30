---
title: Leaving after 6.0 and Looking for Maintainers
permalink: /leaving-and-looking-for-maintainers/
author: soywiz
tags:
  - whatshappening
category: Videodigest
---
![[bgsky.jpg]]

I'm preparing the 6.0 release that will happen in the coming weeks and after that, it will be time for me to leave the project. It has been a lot of years with lots of changes.

I would like to take the opportunity to go back to the origins:

Then the first KorGE public release was 0.5.2 in early 2017:
* <https://blog.korge.org/first-public-release/>
* And an initial coktvfs later korio : <https://github.com/soywiz-archive/korio/commit/38822ad557bb6cfe00a367afaa50debdc3a45cb2>

Those initial versions from +8 years ago are still on maven central!:
* <https://central.sonatype.com/artifact/com.soywiz/coktvfs/0.1>
* <https://central.sonatype.com/artifact/com.soywiz/korio/0.1.1>
* <https://central.sonatype.com/artifact/com.soywiz/korge/0.5.2>

Initially the project was JVM-only and was using JTransc, a project I created to use Haxe to target everywhere:
<https://jtransc.soywiz.com/>

* Kotlin -> JVM -> JTransc -> Haxe with generated reflection -> JS, Native Desktop and Mobile (even Adobe Flash!)

With reflection, KorGE was annotation-based and did some tricks to ease game development. Reflection allowed for automatic dependency injection, serialization and runtime reflection.

Early KorGE versions IIRC were using libgdx mapped to Haxe lime and maybe using [jtransc-media](https://github.com/soywiz-archive/jtransc-media)
So no multiple versions to support, and everything was simple and smooth.

KorGE was designed as a replacement for Adobe Flash, for casual games that needed to target JS (Facebook), Android and iOS. So it mimicked flash API. and also allowed to load SWF animations by preprocessing files into atlases and animation definitions.
Back then iOS couldn't run JS fast and it was interpreted, so native AOT compilation was needed for non trivial games.

At some point Kotlin Multiplatform was announced later in 2018 I started to migrate KorGE to Kotlin Multiplatform, and removing intermediary layers: <https://soywiz.com/korge-works-with-kotlin-native-already-on-macos/>

It was slow early experimental tech, but I trusted it would improve over the time.

Unfortunately that took a lot of time, and it didn't evolve the way I expected. Maintaining everything, keeping CI, maven artifacts, gradle complexity and performance, maven central publishing stability issues, changes in the gradle API, slowness loading the IDE, starting gradle, and building and keeping K/N and JS targets performing reasonably both compile-time and runtime well was heavy time-consuming; specially K/N. So even if the language was fair productive, the overall experience was not the productive I expected. Also targeting multiplatform meant dropping all the reflective functionality from the engine. Without enough help, and without improving Kotlin itself the development slowed down a lot.

In perspective, that was probably not a good idea for the product itself. 

The project also faced a lot of downsides caused by me due to personal circumstances I faced in all these years, and I would like to take the opportunity to apologise to all the people that was involved into them.

On the other side in the end it brought good things too: I met a lot of people, created useful things that helped a lot of people, made friends and felt helpful to the community at least my own way. I learned a lot of things from coding, but also from life itself that I hope will help me and the people around me from now on.

Even if KorGE not evolved the way I expected (for example a proper stable scene and animation editor, stable 3D etc.), it evolved into a code-based rendering engine with some videogame stuff and some projects like [korge-fleks](https://github.com/korlibs/korge-fleks) appeared, and managed to get hot reloading and previewing inside IDE.
I wanted to make an IDE based on IntelliJ for game development, and I did exactly that with KorGE Forge, so I feel the project is completed.

I would like to thank all the patrons that supported this work all these years, and all the people that contributed to KorGE and all the related libraries. Thank you folks!

Now it is time for me to continue with my life, start new things while prioritising the important parts of life.

---

With that said: There is still people using the project. Kotlin evolved and will keep evolving. And some people find it useful. So even if I leave, it might make sense for the project to continue. So if you want to maintain the project or you know someone who would be willing to do so, please contact me via [Discord](https://discord.korge.org/).

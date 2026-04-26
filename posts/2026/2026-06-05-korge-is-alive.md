---
title: Korge is alive
permalink: /korge-roadmap-2026/
sponsor_tier:
author: jobe-m
category: Articles
date: 2026-06-05T22:54:00
tags:
  - KorGE
draft: false
---
![[images/blog/logo-korge-fleks.jpg|685]]

__KorGE is alive__

If you follow our [Discord Server](https://discord.korge.org/) you might have noticed that there is some noise in the Korge universe. First of all Korge has a new owner and maintainer and second we have a plan where we want to go with Korge.

1. Let me quickly inroduce myself. My name is [Marko Koschak](https://github.com/jobe-m). I work as a Software engineer and I am living with my family near Ulm in Germany. I took over the ownership of Korge from Carlos in January 2026. You might now me also from my [Twitch Channel](https://www.twitch.tv/jobegamedev) where I develop a game framework on top of Korge and Fleks ECS and together with that I build a 2D Jump'n run game. Since Korge is the base for my game I want to keep Korge up to date as good as I can. I do this all in my free time, thus I cannot develop Korge further alone. But I want to do my best to maintain the Korge and Korlibs projects and update their codebase and configuration to keep it alive.
2. We (the community) have a Roadmap for Korge release 7. All started with my efforts to publish the Korlibs artefacts to its own namespace "org.korge" on Maven Central. It was the last wish from Carlos that we move it out of his namespace. Because of the not release-friendly setup of Korlibs this task took more than a month. Luckily I got help from a very talented Kotlin and Gradle expert, who helped me to merge all Korlibs repos back into one mono repo and who is currently optimizing the Gradle setup. A big shoutout to [CMalli](https://github.com/malliaridis)!

So for the Roadmap to Release 7 of Korlibs and Korge we have the following points:
- Publishing all Korlibs and Korge artefacts to the new namespace "org.korge" in Maven Central
- Updating the project to use Gradle version 9.4.1 and the Android Gradle Plugin 9.1.1
- Cleaning up and simplifying the Gradle setup to make maintenance much easier and to follow a more gradle-native approach
- Consolidating and merging modules into fewer Gradle sub-projects to decrease build times due to faster dependency resolution
- Migration guide which shows how to port existing projects to Korge 7

What will not be part of Release 7:
- kproject will not be ported, we need to check how it can work together with Gradle 9
- The Korge Store will stay with Korge 6, which means that Korge addons needs to be adapted manually to be used with Korge 7

Please take this Roadmap with a pinch of salt. We will check it and adapt its content while we work on those points. But it should give you at least an idea and an overview what we want to archive.
---
title: Presenting KorGE wrapper
permalink: /korge-wrapper/
sponsor_tier: 
author: ""
category: ""
date: 2024-07-05T00:00:00Z
tags:
---
![[7001b1c1-a97a-4309-88cd-8d359b0a2bd1-f09503e3-0f16-416c-98ae-11dbab05259e-2024-07-05_12-16-26.png]]
## KorGE Wrapper

Presenting the KorGE wrapper! A new tool that is going to replace or complement Gradle eventually. It is designed to
build, run and test KorGE projects in a stable manner. It can work without Java installed on Windows, Linux and Mac
(x64 and arm64 machines).

## Features:

It can `build`, `run` and run with hotreload (`run:reload`) without gradle.

It also serves as a way to install KorGE Forge by executing `./korge forge` or opening the current project with
`./korge open` (doing a unattended installation if Forge is not installed).

It also provides information about modules and artifacts with `./korge info` , that will serve as the foundation for
KorGE Forge to configure the project without gradle.

It supports self-updating the wrapper itself by calling `./korge wrapper <version>`

Future versions will support packing and running in other platforms. In the meantime it can coexist with the KorGE
Gradle Plugin.



## With Gradle:

With Gradle we have a lot of files and complexity for building. While useful in some cases, for simple games, it is an
overkill. Also downloads lots of stuff that is not required for KorGE itself or games created with KorGE. In CI, even
with cache, building is slow:

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-51f34acb-8589-49d8-ac05-64e365a10dda-Untitled.png)

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-029b2e44-c5f8-44bc-b86c-da3731fec863-Untitled.png)

## With KorGE Wrapper:

With the KorGE wrapper we have only the bare minimum things we need. The wrapper, the code and a small optional yaml
file for specifying version, game properties or dependencies. In CI the setup and building is super fast:

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-ea043d9a-7d92-4a16-a69c-ee394fe221a8-Untitled.png)

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-5f0ec0c7-10f5-4415-9aae-fed7e403eba9-Untitled.png)
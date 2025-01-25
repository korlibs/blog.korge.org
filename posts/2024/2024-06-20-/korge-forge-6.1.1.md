---
title: New KorGE Forge with integrated Previewer with hot reloading
permalink: /korge-forge-6.1.1/
sponsor_tier: 
author: korge
category: Releases
date: 2024-06-20T00:00:00Z
tags:
  - release
---
![[7001b1c1-a97a-4309-88cd-8d359b0a2bd1-8c439c85-6133-4625-b3e8-5c70a5745b5f-Screenshot_2024-06-20_at_22.21.25.jpg]]
## New version of KorGE Forge 2024.1 - 6.1.1

This version includes a new split/panel and toolbox for previewing the current game with hotreloading support while
coding.

It also includes an update detection to update KorGE Forge.

![](/images/7001b1c1-a97a-4309-88cd-8d359b0a2bd1-71fba94c-6fa7-4e9e-9ce9-2e4b2da2132c-Screenshot_2024-06-20_at_22.21.25.jpg)

In order to install it, please go to:

<https://forge.korge.org/>

and follow the instructions.


In order to use hot reloading, you have to use KorGE `6.0.0-alpha5` or greater.


Note:

>For linux users there is a [known issue](https://github.com/korlibs/forge.korge.org/issues/4) that would crash the IDE
when opening a web view. In order to fix it. After installing and before opening, execute the following commands:

```bash
sudo chown root:root ~/.local/share/KorGEForge/2024.1/jbr/lib/chrome-sandbox
sudo chmod 04755 ~/.local/share/KorGEForge/2024.1/jbr/lib/chrome-sandbox
```
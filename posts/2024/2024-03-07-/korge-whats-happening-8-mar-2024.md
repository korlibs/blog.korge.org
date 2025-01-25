---
title: What's Happening with KorGe 8th March 2024
permalink: /korge-whats-happening-8-mar-2024/
sponsor_tier: 
author: korge
category: Digests
date: 2024-03-07T01:23:00Z
tags:
  - whatshappening
---
![[7001b1c1-a97a-4309-88cd-8d359b0a2bd1-288ba20e-395f-4d15-97fd-75fabb9b37c1-1.jpg]]

**yggdrasil-io** started to work on a WebGPU rendering implementation. Initially working on SDL, then on Compose
Desktop.

We managed to do some fixes to support multiple 3D scenes on the screen at the same time, doing proper clipping and
transformations to support that.

**holloszaboakos** has continued working on the korge-foundation split, now `korlibs-util` and `korlibs-memory` are
separated.

On korge's side, we are now publishing weekly **What's happening with KorGE** sections on the blog, linkedin, facebook
and instagram. We have now an instagram page: <https://instagram.korge.org/>

We have also released KorGE 5.4.0 with a higely improved and fixed TileMap. Now there is a `TileMapData` class and a
`Tile` class that can handle tiles. It supports sparse (huge maps with chunks of maps) and stacked maps (multiple tiles
per cell). Now the Tile class allows to create tiles from the ID, SliceOrientation (rotation and flips) and offsets.
Now wrapping a Long, we can pack long offsets if required without loss. We have also fixed a few issues regarding tiles
generation that were cropped in some cases. We have also fixed a few YAML issues too and exposed
`korlibs-serialization-yaml`. A dependency-less simple yaml parser.
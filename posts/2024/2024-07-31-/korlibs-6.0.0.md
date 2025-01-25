---
title: Korlibs 6.0.0 released
permalink: /korlibs-6.0.0/
sponsor_tier: 
author: korge
category: Releases
date: 2024-07-31T00:00:00Z
tags:
  - release
---
![[7001b1c1-a97a-4309-88cd-8d359b0a2bd1-1b7bc4a5-1ac5-4e7d-8188-c624e824d282-Korlibs_6.0.jpg]]

Korlibs 6.0.0 was published. This time we have splitted all the code into small repositories, each for library. One of
the problems of the Korlibs was that between releases binary compatibility was lost. Since the libraries have been
there for a long time already, despite their limitations they are much more stable in terms of API than years ago.

To ensure we don't break anything between releases we are using
[kotlinx.binary-compatibility-validator](https://github.com/Kotlin/binary-compatibility-validator) on all the
libraries.

In the case we need to change some APIs we will do similar to what Kotlin does: new code and a long and slow
deprecation schedule.



The korlibs/korlibs repository serves as a catalog of all the libraries:

<https://github.com/korlibs/korlibs>



Each library supports all the Kotlin targets and include kdoc, kover coverage and binary compatibility validator and
all them are published to Maven Central. Some of them also includes a section in the korge documentation website
explaining available functionality.

Since we split libraries further, some tests are still in bigger libraries like korlibs-io, so coverage might not be
accurate until tests are moved to the proper repository.

Here is a full list of libraries published:

## I/O

* <https://github.com/korlibs/korlibs-io/>
* <https://github.com/korlibs/korlibs-io-fs/>
* <https://github.com/korlibs/korlibs-io-network-core/>
* <https://github.com/korlibs/korlibs-io-stream/>
* <https://github.com/korlibs/korlibs-io-vfs/>

## Audio

* <https://github.com/korlibs/korlibs-audio/>
* <https://github.com/korlibs/korlibs-audio-core/>

## Imaging

* <https://github.com/korlibs/korlibs-image/>
* <https://github.com/korlibs/korlibs-image-core/>

## Interop

* <https://github.com/korlibs/korlibs-ffi/>
* <https://github.com/korlibs/korlibs-wasm/>
* <https://github.com/korlibs/korlibs-jseval/>

## Templating (Similar to Liquid)

* <https://github.com/korlibs/korlibs-template/>

## Maths / Geometry / Data Structures

* <https://github.com/korlibs/korlibs-math/>
* <https://github.com/korlibs/korlibs-math-core/>
* <https://github.com/korlibs/korlibs-math-vector/>
* <https://github.com/korlibs/korlibs-bignumber/>
* <https://github.com/korlibs/korlibs-datastructure/>
* <https://github.com/korlibs/korlibs-datastructure-core/>

## Crypto, checksum, encoding, compression

* <https://github.com/korlibs/korlibs-crypto/>
* <https://github.com/korlibs/korlibs-checksum/>
* <https://github.com/korlibs/korlibs-compression/>
* <https://github.com/korlibs/korlibs-encoding/>

## Untyped serialization (CSV, JSON, YAML, TOML, XML, PROPERTIES)

* <https://github.com/korlibs/korlibs-serialization/>
* <https://github.com/korlibs/korlibs-dyn/>

## Time utilities

* <https://github.com/korlibs/korlibs-time/>

### Utilities

* <https://github.com/korlibs/korlibs-platform/>
* <https://github.com/korlibs/korlibs-concurrent/>
* <https://github.com/korlibs/korlibs-annotations/>
* <https://github.com/korlibs/korlibs-inject/>
* <https://github.com/korlibs/korlibs-logger/>
* <https://github.com/korlibs/korlibs-memory/>
* <https://github.com/korlibs/korlibs-string/>
* <https://github.com/korlibs/korlibs-number/>

<h1 align="center">CRVC</h1>
<h2 align="center"> Cryptoeconomic Release & Version Control</h1>

CRVC is an extension to [Git](https://git-scm.com) that allows for the coordination of source code and binary releases among unknown and untrusted participants.

* [Introduction](#introduction)
  * [Purpose](#purpose)
  * [Features](#features)
  * [Who is it for?](#who-is-it-for)
  * [What CRVC isn't](#what-crvc-isnt)
  * [Where does this tool come from?](#where-does-this-tool-come-from)
* [Get started](#get-started)
  * [Requirements](#requirements)
* [Contribute](#contribute)
  * [As a community](#as-a-community)
* [Contribute as a developer](#contribute-as-a-developer)
* [Principles, vision, goals](#principles-vision-goals)
  * [Principles](#principles)
  * [Vision](#vision)
  * [Goals](#goals)
* [Todo](#todo)
* [Public Domain](#public-domain)

## Introduction

CRVC aims to be secure source-control oriented software distribution method. This means you can download binaries and source code that are cryptoeconomically verified by multiple builders.

CRVC encourages the use of a deterministic build process to allow multiple builders to create identical binaries. This allows multiple parties to sign the resulting binaries, creating high assurances that the binaries and tool chain were not tampered with and that the same source was used. It attempts to remove the build and distribution process as a single point of failure.

CRVC is a custom `git-remote`, a helper binary and a collection of cryptoeconomic games to allow anonymous actors to trustlessly coordinate git repositories and software releases.

The current idea is to treat git commit history and release binary hashes as [Schelling Points](https://en.wikipedia.org/wiki/Focal_point_(game_theory)).
Git Objects are deployed on decentralized file storage (Swarm/IPFS) and are extended to provide hash of the content that is more robust than SHA1.

The work is a generalization of the discussion for providing a voluntary update mechanism to Status and encourage deterministic builds , which [can be found here](https://discuss.status.im/t/self-updating-status/964).
Inspired by [mango](https://github.com/axic/mango), [pando](https://github.com/pandonetwork/pando) and [Gitian](https://gitian.org).

### Purpose

To allow coordination of source code and binary releases among a group of actors you don't know. 

### Features

- TODO

### Who is it for?

CRVC is for developers that cannot rely on access control lists (and therefore trust and unique identities) to manage their software repositories.

### What CRVC isn't

 * CRVC is not a decentralized Github
 * CRVC is not a unique Version Control System

### Where does this tool come from?

While it's my belief that the introduction of Australia's Telecommunications and Other Legislation Amendment (Assistance and Access) Act 2018 and the recent FATF Recommendations are well-intentioned, it is clear that these rules are alarming, harmful and prematurely stifle innovation, preventing us from discovering newer, more efficient ways of protecting users and upholding [human rights](http://www.un.org/en/universal-declaration-human-rights/).

As a result, these actions point to a future where I or Status Research & Development GmbH nay be prevented from producing & distributing binaries that do not comply with distribution channel terms of service and jurisdictional policies. CRVC is a foot in the door, it may allow for a future where future generations can create software that better upholds [human rights](http://www.un.org/en/universal-declaration-human-rights/).

## Get started

`nimble build`

### Requirements

- Nim 0.19 or above
- Git
- An Ethereum Node
- IPFS/Swarm Node

## Contribute

Do you want to help? That's awesome. Here are simple things you can do.

### As a community

* Unlike Fight Club, the best way to help is **to actually talk about the project** as much as you can (blog post, articles, Twitter, Facebook).
* You can answer questions in [the issue tracker](https://github.com/status-im/crvc/issues) to help other community members.

## Contribute as a developer

* Read our [Contribution Guide](/CONTRIBUTING.md).
* Install the developer version locally so you can start contributing [instructions](/docs/contribute/index.md).
* Look for [issues labelled bugs](https://github.com/status-im/crvc/issues?q=is%3Aopen+is%3Aissue+label%3Abug) if you are looking to have an immediate impact on the project.
* Look for [issues labelled Help wanted](https://github.com/status-im/crvc/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22) These are issues that you can solve relatively easily.
* Look for [issues labelled Good first issue](https://github.com/status-im/crvc/labels/good%20first%20issue) These issues are for people who want to contribute, but try to work on a small feature first.
* If you are an advanced developer, you can try to tackle [issues labelled feature requests](https://github.com/status-im/crvc/issues?q=is%3Aopen+is%3Aissue+label%3A%22feature+request%22). Beware though - they are harder to do and will require a lot of back and forth with the repository administrator in order to make sure we are going to the right direction with the product.

We welcome contributions of all kinds from anyone.

## Principles, vision, goals

Software are cultural artefacts, and as such I want to embed in them the ability to uphold [human rights](http://www.un.org/en/universal-declaration-human-rights/).

### Principles

You can read [Status' Principles here](https://our.status.im/our-principles/).

* Liberty
* Censorship resistance
* Security
* Privacy
* Transparency
* Openness
* Decentralization
* Inclusivity
* Continuance
* Resourcefulness

### Vision

CRVC's vision is to **help people write the software of the future, even when the walls have closed in**.

### Goals

- Friends don't let friends run untrusted binaries.
- Providing some assurance that:
    + the binaries and build environment were not tampered with
    + the same source code was used.
- Checking for updates should be passive.
- A user should be able to independently build and check artifacts against the respective hash of a binary.
- Updating should be voluntary, trust is in the eye of the beholder.

### Todo
- Contract Games
- Create a Git-Remote
- Pretty much everything

## Public Domain

This software is released into the public domain to the full extent the law allows. [View CC0](/LICENSE.md).
(oh the irony).
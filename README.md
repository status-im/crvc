# CRVC

## Cryptoeconomic Release & Version Control

### Summary

CRVC is a custom `git-remote` and a collection of cryptoeconomic games to allow anonymous actors to trustlessly coordinate git repositories and software releases.

The current idea is to treat git commit history and release binary hashes as [Schelling Points](https://en.wikipedia.org/wiki/Focal_point_(game_theory)).
Git Objects are deployed on decentralized file storage (Swarm/IPFS) and are extended to provide hash of the content that is more robust than SHA1.

The work is a generalization of the discussion for providing a voluntary update mechanism to Status and encourage deterministic builds , which [can be found here](https://discuss.status.im/t/self-updating-status/964).
Inspired by [mango](https://github.com/axic/mango) and [pando](https://github.com/pandonetwork/pando).

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

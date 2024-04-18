# jiyi

## Build

From anki we need pylib which depends on rustlib and rustbridge. It gets compiled for use using `./ninja pylib`. I take from anki's build scripts to figure out how to build. See [here](https://github.com/ankitects/anki/blob/main/docs/development.md) and [here](https://github.com/ankitects/anki/blob/main/docs/build.md) and [here](https://github.com/ankitects/anki/blob/main/docs/linux.md).

To run anki we need python3 which as of yet is not in Miyoo. Instead use the precompiled binaries ` bin_python3_pygame_20220223.zip ` in the [steward-fu archive](https://github.com/steward-fu/archives/releases/tag/miyoo-mini).

To compile to miyoo I use the info from the readme [here](https://github.com/anzz1/miyoomini-apps/) and get inspiration from [Onion](https://github.com/OnionUI/Onion/blob/main/Makefile). 

The steps are pulling a docker image with the miyoo toolchain, running a container, and within it building anki.

## Run

- `git clone --recurse-submodules https://github.com/mochar/jiyi.git`
-

## Current steps
- `make toolchain`
- `apt-get update`
- `apt-get install curl`
- `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`
- `source "$HOME/.cargo/env"`
- `./anki/tools/install-n2`
- `apt install bash grep findutils curl gcc g++ git rsync ninja-build`
- Comment out `anki/python/requirements.qt6_lin.in` and `anki/python/requirements.qt6_lin.txt`
- `make anki-pylab`

## Running anki

hajed run following or won't work:
```
import sys
sys.path.extend(["anki/pylib", "anki/out/pylib"])
import anki                                                                  
from anki.collection import Collection
```
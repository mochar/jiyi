# jiyi

## Build

From anki we need pylib which depends on rustlib and rustbridge. It gets compiled for use using `./ninja pylib`. I take from anki's build scripts to figure out how to build. See [here](https://github.com/ankitects/anki/blob/main/docs/development.md) and [here](https://github.com/ankitects/anki/blob/main/docs/build.md) and [here](https://github.com/ankitects/anki/blob/main/docs/linux.md).

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

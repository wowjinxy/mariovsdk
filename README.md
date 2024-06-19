# Mario vs. Donkey Kong

This is a disassembly of Mario vs. Donkey Kong (U)[!]

It builds the following ROM:
* mariovsdk.gba `md5: ceda12928a686878795def3b413ccfc2`

### Setting up the repository

* You must have a copy of the Mario vs. Donkey Kong ROM named `baserom.gba` in the repository directory.

* Install [**devkitARM**](http://devkitpro.org/wiki/Getting_Started/devkitARM).

* Then get the build tools from https://github.com/pret/pokeruby-tools. Copy the `tools/` folder into the repository directory.

* Clone [agbcc](https://github.com/pret/agbcc) outside of this repository, run `./build.sh`, and then `./install.sh [mariovsdk path]`, where `[mariovsdk path]` is the directory where you cloned the mariovsdk repository.

* You can then build mariovsdk using `make` in the MSYS environment provided with devkitARM.

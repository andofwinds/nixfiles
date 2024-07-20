# and's nixos / home-manager config.

## Path-map
- `base`: A basic config snippets, *ex. timezone*
- `home`: Home-manager config
- `host`: My hosts' configurations
- - *per-host*:
- - - `default.nix`: A main host behavior and their imports
- - - `hdw.nix`: A host's hardware configuration
- - - `packages.nix`: A host's package set
- `mod`: Modules directory, *ex. bluetooth, wifi*

## Hardware
| Laptops               | PcBuilds
| :---:                 | :---:
| ThinkPad T490         | RX580 / i3-8100 / 16GB DDR 4
| ThinkPad E14 Gen 2    | AMD A87670K / 8GB DDR4
| Huawei MateBook D14   | IBM PC 350 (i486 DX 2)
| Acer Aspire V (2013)  |

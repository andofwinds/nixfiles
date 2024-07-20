# and's nixos / home-manager config.

### Path-map
- `base`: A basic config snippets, *ex. timezone*
- `home`: Home-manager config
- `host`: My hosts' configurations
- - *per-host*:
- - - `default.nix`: A main host behavior and their inputs
- - - `hdw.nix`: A host's hardware configuration
- - - `packages.nix`: A host's package set
- `mod`: Modules directory, *ex. bluetooth, wifi*

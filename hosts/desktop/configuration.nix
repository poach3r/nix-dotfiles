{...}: {
  imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
    ./gaming.nix
    ./networking.nix
    ./plasma.nix
    ./audio.nix
    ./boot.nix
    ./users.nix
    ./nixpkgs.nix
    ./locales.nix
    ./misc.nix
  ];
}

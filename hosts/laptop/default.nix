{...}: {
  imports = [
    ../common
    ./hardware-configuration.nix
    ./networking.nix
    ./users.nix
  ];
}

{pkgs, ...}: {
  imports = [
    ../common/home.nix
    ./plasma.nix
    ./vesktop.nix
  ];

  home.packages = with pkgs; [
    steam
    gamemode
    lutris
  ];
}

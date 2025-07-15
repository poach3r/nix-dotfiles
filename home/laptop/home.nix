{pkgs, ...}: {
  imports = [
    ../common/home.nix
    ./plasma.nix
  ];

  home = {
    username = "poacher";
    homeDirectory = "/home/poacher";

    packages = with pkgs; [
    ];
  };
}

{pkgs, ...}: {
  imports = [
    ./shell.nix
    ./zed.nix
    #./firefox.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "poacher";
    homeDirectory = "/home/poacher";

    packages = with pkgs; [
      fastfetch
      git
      firefox
      kdePackages.ghostwriter
      fzf
      ripgrep
      vlc
      gh
      nh
      direnv
    ];

    stateVersion = "25.05";
  };
}

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
      fzf
      ripgrep
      vlc
      gh
      nh
      converseen
      kdePackages.kalk
      kdePackages.kget
      kdePackages.neochat
      kdePackages.klevernotes
    ];

    sessionVariables = {
      FLAKE = "/home/poacher/nix-dotfiles";
    };

    stateVersion = "25.05";
  };
}

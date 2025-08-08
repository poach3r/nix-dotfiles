{pkgs, ...}: {
  imports = [
    ./shell.nix
    ./zed.nix
    ./chromium.nix
    #./firefox.nix
  ];

  programs.home-manager.enable = true;

  home = {
    username = "poacher";
    homeDirectory = "/home/poacher";

    packages = with pkgs; [
      fastfetch
      git
      fzf
      ripgrep
      vlc
      gh
      nh
      converseen
      rar
      kdePackages.kalk
      kdePackages.neochat
      kdePackages.klevernotes
    ];

    sessionVariables = {
      FLAKE = "/home/poacher/nix-dotfiles";
      NIXPKGS_ALLOW_UNFREE = 1;
    };

    stateVersion = "25.05";
  };
}

{pkgs, ...}: {
  imports = [
    ./shell.nix
    ./zed.nix
    #./firefox.nix
  ];

  programs.home-manager.enable = true;

  home = {
    packages = with pkgs; [
      fastfetch
      git
      firefox
      kdePackages.ghostwriter
      fzf
      ripgrep
      vlc
      gh
    ];

    stateVersion = "25.05";
  };
}

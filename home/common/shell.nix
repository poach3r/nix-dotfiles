{...}: {
  programs.nushell = {
    enable = true;
    settings = {
      show_banner = false;
    };
  };

  programs.starship = {
    enable = true;
    enableNushellIntegration = true;
  };
}

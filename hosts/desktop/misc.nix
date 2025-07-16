{...}: {
  nix.settings.experimental-features = ["nix-command" "flakes"];
  programs.kdeconnect.enable = true;
  services.printing.enable = true;

  system.stateVersion = "25.05";
}

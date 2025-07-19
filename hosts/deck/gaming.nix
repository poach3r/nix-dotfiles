{...}: {
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;

  jovian = {
    decky-loader.enable = true;
    steam = {
      enable = true;
      autoStart = true;
      updater.splash = "jovian";
    };
    devices.steamDeck = {
      enable = true;
      autoUpdate = true;
      enableGyroDsuService = true;
    };
  };
}

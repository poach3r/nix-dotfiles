{pkgs, ...}: {
  home.packages = with pkgs; [
    rsrpc
  ];

  programs.vesktop = {
    enable = true;
    settings = {
      minimizeToTray = false;
      tray = false;
      hardwareAcceleration = true;
      customTitleBar = true;
      arRPC = true;
    };
  };

  systemd.user.services.rsrpc = {
    Unit = {
      Description = "Discord RPC";
    };
    Install = {
      WantedBy = [ "default.target"];
    };
    Service = {
      ExecStart = "${pkgs.rsrpc}/bin/rsrpc-cli";
    };
  };
}

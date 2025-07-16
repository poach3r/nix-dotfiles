{pkgs, ...}: {
  users.users.poacher = {
    isNormalUser = true;
    description = "Henry Matonis";
    extraGroups = ["networkmanager" "wheel"];
    shell = pkgs.nushell;
  };
}

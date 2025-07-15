{pkgs, ...}: {
  programs.zed-editor = {
    enable = true;
    extensions = ["nix"];

    extraPackages = with pkgs; [
      nil
      alejandra
    ];

    userSettings = {
      lsp."nil"."initialization_options"."formatting"."command" = ["alejandra" "--quiet" "--"];
    };
  };
}

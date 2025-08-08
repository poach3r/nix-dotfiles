{pkgs, ...}: {
  home.packages = with pkgs; [
    nil
    alejandra
  ];

  programs.zed-editor = {
    enable = true;
    extensions = ["nix" "toml"];

    userSettings = {
      disable_ai = true;
      lsp.nil.binary.path = "${pkgs.nil}/bin/nil";
      lsp.nil.initialization_options.formatting.command = ["alejandra" "--quiet" "--"];
      languages.Nix.language_servers = ["nil" "!nixd"];
    };
  };
}

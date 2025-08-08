{
  pkgs,
  lib,
  ...
}: {
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;
    extensions = let
      createChromiumExtensionFor = browserVersion: {
        id,
        sha256,
        version,
      }: {
        inherit id;
        crxPath = builtins.fetchurl {
          url = "https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=${browserVersion}&x=id%3D${id}%26installsource%3Dondemand%26uc";
          name = "${id}.crx";
          inherit sha256;
        };
        inherit version;
      };
      createChromiumExtension = createChromiumExtensionFor (lib.versions.major pkgs.ungoogled-chromium.version);
    in [
      (createChromiumExtension {
        # https://chromewebstore.google.com/detail/ublock-origin-lite/ddkjiahejlhfcafbddmgiahcphecmpfh?hl=en
        id = "ddkjiahejlhfcafbddmgiahcphecmpfh";
        sha256 = "14wwibgqzf8h26vn9fpxvc2z8lxi80psb9vdwy9bv9rhl19vky83";
        version = "2025.804.1547";
      })
      (createChromiumExtension {
        id = "mnjggcdmjocbbbhaepdhchncahnbgone";
        sha256 = "0sxkrnpn3whi21zvqhr59z74ga8h5clmh8jbqhrgncab33n4d81m";
        version = "5.14";
      })
    ];
  };
}

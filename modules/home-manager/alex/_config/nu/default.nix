{ pkgs, config, ... }: {
  home = {
    packages = with pkgs; [
      nushell
    ];
    file = {
      ".config/nushell/config.nu" = {
        source = ./files/config.nu;
      };
      ".config/nushell/env.nu" = {
        source = ./files/env.nu;
      };
    };
  };
}

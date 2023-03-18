{ pkgs, ... }: {
  imports = [
    ./programs

    ./_config
  ];

  home = {
    username = "alex";
    homeDirectory = "/home/alex";
    stateVersion = "23.05";
    packages = with pkgs; [
      gnomeExtensions.blur-my-shell
      gnomeExtensions.just-perfection
    ];

    # sets a singular cursor to use,
    # resolves issues in which some
    # applications draw an incorrect
    # cursor
    pointerCursor = {
      name = "Adwaita";
      package = pkgs.gnome.adwaita-icon-theme;
      size = 24;
      x11 = {
        enable = true;
        defaultCursor = "Adwaita";
      };
    };
  };
}


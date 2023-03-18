{ pkgs, ... }: {
  imports = [
    ./programs
  ];
  
  home = {
    username = "alex";
    homeDirectory = "/home/alex";
    stateVersion = "23.05";
    packages = with pkgs; [
      gnomeExtensions.blur-my-shell
      gnomeExtensions.just-perfection
    ];

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
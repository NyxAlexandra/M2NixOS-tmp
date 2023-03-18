{ pkgs, ... }: {
  fonts = {
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-extra
      noto-fonts-emoji
      (nerdfonts.override { fonts = [ "Noto" ]; })
    ];
    fontDir.enable = true; # Creates `~/.local/share/fonts`
    enableDefaultFonts = true;
    fontconfig.defaultFonts = {
      serif = [ "Noto Serif" "Source Han Serif" ];
      sansSerif = [ "Noto Sans" "Source Han Sans" ];
      monospace = [ "NotoSansMono Nerd Font" "Noto Sans Mono" ];
    };
  };
}
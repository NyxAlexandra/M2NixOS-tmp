{ pkgs, ... }: {
  fonts = {
    fonts = with pkgs; [ noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ];
    fontDir.enable = true; # Creates `~/.local/share/fonts`
    # fontsConfig = {}; # TODO
  };
}
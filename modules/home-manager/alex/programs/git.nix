{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "NyxAlexandra";
    userEmail = "nyxalexandra@proton.me";
    signing = {
      signByDefault = true;
      key = "BBE61275CE808C10"; # acquired with `gpg --list-secret-keys --keyid-format=long`
    };
    delta.enable = true; # Better diff highlighting
    aliases = {
      a = "add";
      c = "commit";
      l = "log";
      r = "reset";
      s = "status";
      d = "diff";
    };
  };

  home.packages = with pkgs; [ gnupg ];
}
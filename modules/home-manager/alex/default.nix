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
  };
}
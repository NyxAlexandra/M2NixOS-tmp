{ config, pkgs, ... }: {
  imports = [
    ./home-manager

    ./boot.nix
    ./console.nix
    ./environment.nix
    ./fileSystems.nix
    ./fonts.nix
    ./hardware-configuration.nix
    ./hardware.nix
    ./networking.nix
    ./nix.nix
    ./nixpkgs.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./users.nix
    ./xdg.nix
  ];

  time.timeZone = "US/Eastern";
  
  i18n.defaultLocale = "en_US.UTF-8";

  sound.enable = true;
  
  security.rtkit.enable = true;

  system.stateVersion = "23.05";

  systemd.services.zfs-mount.enable = false;
}

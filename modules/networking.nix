{ pkgs, ... }: {
  networking = {
    hostName = "M2NixOS";
    hostId = "699510f6"; # Randomly-generated 8-long string
    networkmanager.enable = true;
  };
}
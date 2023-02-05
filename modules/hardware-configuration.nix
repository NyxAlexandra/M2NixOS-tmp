# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "usb_storage" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "vd/Main";
      fsType = "zfs";
    };

  fileSystems."/etc" =
    { device = "vd/Main/etc";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "vd/Main/home";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "vd/Main/nix";
      fsType = "zfs";
    };

  fileSystems."/usr" =
    { device = "vd/Main/usr";
      fsType = "zfs";
    };

  fileSystems."/var" =
    { device = "vd/Main/var";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/8082-1E16";
      fsType = "vfat";
    };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.eth0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp1s0f0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "aarch64-linux";
  powerManagement.cpuFreqGovernor = lib.mkDefault "ondemand";
  # high-resolution display
  hardware.video.hidpi.enable = lib.mkDefault true;
}

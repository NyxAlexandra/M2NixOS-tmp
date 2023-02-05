{ pkgs, ... }: {
  fileSystems = {
    "/" = {
      device = "vd/Main";
      fsType = "zfs";
    };
    "/etc" = {
      device = "vd/Main/etc";
      fsType = "zfs";
    };
    "/home" = {
      device = "vd/Main/home";
      fsType = "zfs";
    };
    "/nix" = {
      device = "vd/Main/nix";
      fsType = "zfs";
    };
    "/usr" = {
      device = "vd/Main/usr";
      fsType = "zfs";
    };
    "/var" = {
      device = "vd/Main/var";
      fsType = "zfs";
    };
  };
}
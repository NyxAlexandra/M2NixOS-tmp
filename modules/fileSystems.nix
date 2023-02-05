{ pkgs, ... }: {
  fileSystems = {
    "/" = {
      device = "vd/Main";
      fsType = "zfs";
    };
    "/bin" = {
      device = "vd/Main/bin";
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
      options = [ "noatime" ];
    };
    # "/root" = {
      # device = "vd/Main/root";
      # fsType = "zfs";
    # };
    "/srv" = {
      device = "vd/Main/srv";
      fsType = "zfs";
    };
    "/state" = {
      device = "vd/Main/state";
      fsType = "zfs";
    };
    # "/tmp" = {
      # device = "vd/Main/tmp";
      # fsType = "zfs";
    # };
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
{ pkgs, ... }: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = false; # U-Boot doesn't support EFI vars
    };
    zfs.requestEncryptionCredentials = true;
    supportedFilesystems = [ "zfs" ];
    initrd = {
      supportedFilesystems = [ "zfs" ];
      # # Wipe selected directories at boot
      # postDeviceCommands = ''
      #   # zpool import -Nf vd

      #   # zfs rollback vd/Main/bin@blank
      #   zfs rollback vd/Main/srv@blank

      #   zfs export -a
      # '';
    };
    # Fix keyboard keys switched/incorrect
    extraModprobeConfig = ''
      options hid_apple iso_layout=0
    '';
  };
}
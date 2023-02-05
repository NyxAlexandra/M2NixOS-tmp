{ pkgs, ... }: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = false; # U-Boot doesn't support EFI vars
    };
    zfs.requestEncryptionCredentials = true;
    supportedFilesystems = [ "zfs" ];
    # Fix keyboard keys switched/incorrect
    extraModprobeConfig = ''
      options hid_apple iso_layout=0
    '';
  };
}
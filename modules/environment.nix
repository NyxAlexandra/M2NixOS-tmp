{ pkgs, ... }: {
  environment = {
    # persistence."/state" = {
    #   hideMounts = true;
    #   directories = [
    #     "/var/log"
    #     "/var/lib/bluetooth"
    #     "/var/lib/nixos"
    #     "/var/lib/systemd/coredump"
    #     "/var/lib/flatpak/app" # system-wide flatpaks
    #     # "/etc/NetworkManager/system-connections"
    #     # "/etc/ssh"
    #     {
    #       directory = "/var/lib/colord";
    #       user = "colord";
    #       group = "colord";
    #       mode = "u=rwx,g=rx,o=";
    #     } 
    #   ];
    #   # files = [
    #   #   "/etc/machine-id"
    #   #   {
    #   #     file = "/etc/nix/id_rsa";
    #   #     parentDirectory = { mode = "u=rwx,g=,o="; };
    #   #   }
    #   # ];
    # };
    variables = {
      "MOZ_ENABLE_WAYLAND" = "1";
    };
    systemPackages = with pkgs; [
      wget
      helix
      zfs
      firefox
      git
      gnome.adwaita-icon-theme
      gnome.gnome-tweaks
      adw-gtk3
      gnome.gnome-terminal
      papirus-icon-theme
      vscode
      neovim
      alacritty
      rustup
      gcc
      pkg-config
    ];
  };
}
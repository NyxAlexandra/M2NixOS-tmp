{ pkgs, ... }: {
  users = {
    mutableUsers = false; # If false, users can only be mutated by Nix
    users = {
      "root" = {
        isNormalUser = false;
        home = "/root"; # prevents creation of files that should be in `/root` (ex: `.cache`) in `/` (`/.cache`)
        hashedPassword = "$6$7MuOYT/5OpYelUIp$ucjeHlCE11z7SgM.fd5c4CypNDnm4CEPWQ4ddwRO6ox44tFrdT76IclCD6f5n83yxwW7YGbTDCqlzZ6ZjpNIB.";
      };
      "alex" = {
        isNormalUser = true;
        home = "/home/alex";
        # Acquired with `mkpasswd -m SHA-512 -s`
        hashedPassword = "$6$7MuOYT/5OpYelUIp$ucjeHlCE11z7SgM.fd5c4CypNDnm4CEPWQ4ddwRO6ox44tFrdT76IclCD6f5n83yxwW7YGbTDCqlzZ6ZjpNIB.";
        extraGroups = [ "wheel" "video" "networkmanager" ];
      };
    };
  };
}
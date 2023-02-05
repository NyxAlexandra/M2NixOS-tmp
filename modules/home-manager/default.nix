{ pkgs, ... }: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users = {
      "alex" = import ./alex;
    };
  };
}
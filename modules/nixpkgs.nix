{ pkgs, ... }: {
  # Only effective when not using a Flakes-based config
  nixpkgs.config = {
    allowUnfree = true;
    allowBroken = true;
  };
}
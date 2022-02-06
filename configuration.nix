{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ]

  boot.loader.systemd-boot.enable = true;
  system.autoUpgrade.enable = true;
  networking.hostname = "maxh-nixos";
  environmnet.systemPackages = [
    pkgs.firefox,
    pkgs.foot,
    pkgs.alacritty,
    pkgs.neovim,
    pkgs.spotify,
    pkgs.fish,
    pkgs.node,
    gnomeExtensions.dash-to-dock,
    gnomeExtensions.armenu,
    gnomeExtensions.chrome-gnome-shell,
    gnomeExtensions.pop-shell
  ];
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.enable = true;
}

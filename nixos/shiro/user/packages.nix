{ pkgs }:

with pkgs; [
  bitwarden
  bitwarden-cli
  docker-compose
  du-dust
  element-desktop
  fd
  google-chrome
  google-cloud-sdk
  guake
  htop
  nixpkgs-review
  ripgrep
  spotify
  tdesktop
  tldr
  unzip
  xclip
  zip
  zoom-us
  (orchis-theme.override { withWallpapers = true; })
] ++ (with pkgs.gnomeExtensions; [
  clipboard-history
  dash-to-dock
  spotify-tray
])

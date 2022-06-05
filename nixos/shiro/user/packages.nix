{ pkgs }:

with pkgs; [
  google-chrome
  guake
  zip
  unzip
  docker-compose
  tdesktop
  nixpkgs-review
  zoom-us
  xclip
  element-desktop
  (orchis-theme.override { withWallpapers = true; })
] ++ (with pkgs.gnomeExtensions; [
  clipboard-history
  dash-to-dock
])

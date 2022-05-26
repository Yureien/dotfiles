{ pkgs }:

with pkgs; [
  google-chrome
  vscode-fhs
  guake
  zip
  unzip
  docker-compose
  tdesktop
  nixpkgs-review
  (orchis-theme.override { withWallpapers = true; })
] ++ (with pkgs.gnomeExtensions; [
  clipboard-history
  dash-to-dock
])

# with import <nixpkgs> {};
{pkgs ? import <nixpkgs> {}, nodejs ? pkgs.elmPackages.nodejs , install ? false }:

pkgs.mkShell {
  name = "yarn-shell";
  packages = [
    nodejs
    (pkgs.yarn.override { inherit nodejs; })
  ];
  shellHook = if install then ''
    yarn
  '' else "" + ''
    yarn start
  '';
}

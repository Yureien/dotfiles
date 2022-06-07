{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ghost";
  home.homeDirectory = "/home/ghost";

  # Packages
  home.packages = import ./packages.nix { inherit pkgs; };

  programs.git = {
    enable = true;
    delta.enable = true;
  };

  programs.ssh = {
    enable = true;
    compression = true;
    extraConfig = import ./ssh-config.nix; # Contains some private data, not VC-ed.
  };

  programs.go.enable = true;

  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhsWithPackages (ps: with ps; [ nixpkgs-fmt ]);
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
  };

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";
}

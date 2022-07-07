{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ghost";
  home.homeDirectory = "/home/ghost";

  # Packages
  home.packages = import ./packages.nix { inherit pkgs; };

  # Shell stuff
  programs.fish.enable = true;
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      command_timeout = 3000;
    };
  };
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  # CLI
  programs.bat.enable = true;
  programs.go.enable = true;
  programs.git = {
    enable = true;
    delta.enable = true;
    package = pkgs.gitAndTools.gitFull;
    extraConfig = {
      sendemail = {
        smtpserver = "smtp.gmail.com";
        smtpuser = "hello@sohamsen.me";
        from = "contact@sohamsen.me";
        smtpencryption = "tls";
        smtpserverport = 587;
      };
    };
  };
  programs.ssh = {
    enable = true;
    compression = true;
    extraConfig = import ./ssh-config.nix; # Contains some private data, not VC-ed.
  };

  # GUI
  programs.vscode = {
    enable = true;
    package = pkgs.vscode-fhsWithPackages (ps: (with ps; [
      nixpkgs-fmt
      delve
      gcc-unwrapped
      python3
      python3Packages.black
    ]));
    extensions = with pkgs.vscode-extensions; [
      jnoortheen.nix-ide
    ];
  };
  programs.mpv.enable = true;

  # Misc.
  services.mpris-proxy.enable = true;

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

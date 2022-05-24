# dotfiles :tm:
My dotfiles, so I can easily copy these across all the systems.

I try to document them whenever possible, and sometimes too many comments, so it shouldn't be hard to understand what each part does. Feel free to use this and customize any way you want!

## Installation

While the simplest way to install these would be to copy in respective directories, I use GNU stow(8). It's as simple as:
```
cd ~  # By default, stow will install the symlinks to one directory level above where the repo is.
git clone https://github.com/FadedCoder/dotfiles.git .dotfiles
cd .dotfiles
stow zsh
stow <names of directories>...
```

`stow` will automatically create symlinks and everything just werks :tm:. Keep in mind stow by default targets the directory one level above it, NOT $HOME.

### NixOS

Well, for Nix stuff, just copy paste the files. Mostly cause symlink-ing to /etc/ is dangerous. And annoying. Copy paste directories:

1. `nixos/$PC/system` goes into `/etc/nixos`
2. `nixos/$PC/user` goes into `$HOME/config/nixpkgs`

There are some files which contain private data (for example, `ssh-config.nix` so those aren't committed). Rename the `.nix.example` file to `.nix` to make it work.

I use multiple PCs, so the configuration sometimes varies slightly for each.

Use `update-nix.sh` to well, update the config files here.

## Stuff that I use

| Function             | Software                                                 |
|----------------------|----------------------------------------------------------|
| Operating systems    | NixOS ~~Arch Linux (ofc)~~, Windows 10                   |
| Display server       | X11                                                      |
| Editor               | VS Code, nano, ~~Emacs (Linux)~~                         |
| Web browser          | Google Chrome                                            |
| Shell                | zsh                                                      |

## Clarifications

Wait, before you come to my house with pitchforks and torches, here are the reasons why I use what I use:
1. Windows 10, cause games. Haha, gaming on Linux. Good luck trying to get BattlEye to work on Linux. Also, things work quite often OOB in Windows and doesn't take hours of configuration.
2. ~~Arch Linux~~ NixOS masterrace. I was a long time user of Arch Linux, but then, NixOS happened. I love how easy it is to setup Nix (well, excluding it's infinite learning curve which makes it the most difficult distro/package manager to grasph), but once you learn how to use it, it's pretty awesome. I do still use Arch Linux in some places (like WSL) but nowadays NixOS is my daily driver.
3. In NixOS, I use home-manager to maintain my home. Pretty nifty.
4. No thanks, I don't need Wayland. I like having stuff that works.
5. As you grow up, you learn there are more important things in life than configuring operating-systems-disguised-as-text-editors. Once upon a time, I used to be a hardcore Emacs user but nowadays I don't get the time to put in days of work making my editor work just how I want it. VS Code works pretty well out of the box.
6. Google Chrome cause I'm not suffering from paranoia.
7. I used `fish` for a while, but `zsh` has more :features: and I don't want to learn a new scripting language and then mix up different syntaxes and suffer. Oh, and sometimes, when people ship only bash files for env, I don't need to cry.

## Credits

My dotfiles are plagiarized/inspired mostly from https://git.yukiisbo.red/yuki/dot. Even parts of this README.

So, blame the above mentioned person if something is broken :)

## Mirror

This repository is hosted on https://git.sohamsen.me/GhostDev/dotfiles.

Mirror is available on [GitHub](https://github.com/FadedCoder/dotfiles).
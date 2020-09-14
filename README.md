# dotfiles :tm:
My dotfiles, so I can easily copy these across all the systems.

I try to document them whenever possible, and sometimes too many comments, so it shouldn't be hard to understand what each part does. Feel free to use this and customize any way you want!

## Installation

While the simplest way to install these would be to copy in respective directories, I use GNU stow(8). It's as simple as:
```
cd ~  # By default, stow will install the symlinks to one directory level above where the repo is.
git clone git clone https://github.com/FadedCoder/dotfiles.git .dotfiles
cd .dotfiles
stow zsh
stow <names of directories>...
```

`stow` will automatically create symlinks and everything just werks :tm:. Keep in mind stow by default targets the directory one level above it, NOT $HOME.

## Stuff that I use

| Function             | Software                                                 |
|----------------------|----------------------------------------------------------|
| Operating systems    | Arch Linux (ofc), Windows 10                             |
| Display server       | X11                                                      |
| Editor               | Emacs (Linux), ~~VS Code (Windows)~~, nano (short edits) |
| Web browser          | Google Chrome                                            |
| Shell                | zsh                                                      |

## Clarifications

Wait, before you come to my house with pitchforks and torches, here are the reasons why I use what I use:
1. Windows 10, cause games. Haha, gaming on Linux. Good luck trying to get BattlEye to work on Linux.
2. Arch Linux masterrace. Also, I use Arch Linux on WSL.
3. No thanks, I don't need Wayland. I want stuff to work.
4. ~~VS Code, cause I don't aim to spend my life debugging why Emacs doesn't work as intended on Windows. Works better than Emacs with WSL. By better, I mean X11 forwarding is a pain and I have no current plans to do that.~~ I take back what I said. X11 forwarding works great with my local server and LSP (https://emacs-lsp.github.io/lsp-mode) is GREAT. I have no reason to use anything else now, except nano cause I don't want to install emacs on my servers.
5. Emacs masterrace. Nice OS, although I wish it could edit files too.
6. Google Chrome cause I'm not suffering from paranoia.
7. I used fish for a while, but bash/zsh has more :features: and I don't want to learn a new scripting language and then mix up bash and fish syntax and suffer. Oh, and sometimes, when people ship only bash files for env, I don't need to cry.

## Credits
My dotfiles are plagiarized/inspired mostly from https://git.yukiisbo.red/yuki/dot. Even parts of this README.

So, blame above mentioned guy if something is broken.

## Mirror

This repository is hosted on https://git.sohamsen.me/GhostDev/dotfiles.

Mirror is available on [GitHub](https://github.com/FadedCoder/dotfiles).
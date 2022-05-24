#!/usr/bin/env bash

COMMIT_FILES=0

usage() { echo -e "Usage: $0 [-c] -p <PC Name>\n\nCOMMANDS:\n\t-c: Commit files after copying\n\t-p: PC name" 1>&2; exit 1; }

while getopts ':chp:' opt; do
    case "${opt}" in
        c)
            COMMIT_FILES=1
            ;;
        p)
            PC=${OPTARG}
            ;;
        h)
            usage
            ;;
        *)
            echo "Invalid option -- ${opt}"
            usage
            exit 1
            ;;
    esac
done
shift $((OPTIND-1))

if [[ -z ${PC} ]]; then
    echo "Please enter PC name"
    usage
    exit 2
fi

echo "Copying system files..."
mkdir -p ./nixos/$PC/system
cp -r /etc/nixos/* ./nixos/$PC/system/
# Version Control not necessary for this
rm ./nixos/$PC/system/hardware-configuration.nix

echo "Copying user files..."
mkdir -p ./nixos/$PC/user
cp -r $HOME/.config/nixpkgs/* ./nixos/$PC/user/

if [[ COMMIT_FILES -eq 1 ]]; then
    git add nixos
    git commit -m "Updated Nix config"
fi
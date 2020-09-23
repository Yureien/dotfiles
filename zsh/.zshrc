# Antigen stuff; download antigen if not exists
ANTIGEN_HOME=$HOME/.local/bin
if [ ! -f $ANTIGEN_HOME/antigen.zsh ]; then
    echo "Antigen missing, curl-ing it..."
    mkdir -p $ANTIGEN_HOME
    curl -sL git.io/antigen > $ANTIGEN_HOME/antigen.zsh
fi
source $ANTIGEN_HOME/antigen.zsh

# Oh-my-zsh is compulsory, ofc.
antigen use oh-my-zsh

# Default bundles that I need
if [ -f "/etc/arch-release" ]; then antigen bundle archlinux; fi
if [ -f "/etc/debian_version" ]; then antigen bundle debian; fi
antigen bundle colorize
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle git
antigen bundle pip
antigen bundle ssh-agent
# antigen bundle per-directory-history

# Custom ones
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle djui/alias-tips

# Theme!
antigen theme agnoster

# Apply all the bundles and theme
antigen apply

# Make history better
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

# Starting text
# Adjusted to my sleeping schedule :P
printf "こんにちわ $USER-kun! "
HOUR=$(date "+%k")
if (( HOUR < 7 )); then
    printf "You should go to sleep, y'know?"
elif (( HOUR < 14 )); then
    printf "Ah the fresh morning air... Wait, did you wake up at 1300 again?"
else
    printf "A perfect time for working, innit?"
fi
echo

# Fortune | Cowsay
if command -v "fortune" >/dev/null && \
        command -v "cowsay" >/dev/null; then
    fortune -c -a | cowsay
    echo
fi

# History-substring search binding
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Alias tips so I don't forget the aliases for commands
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Psst, you can use the alias: "
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="_ ll vi ls"

# More Aliases
alias reboot="sudo reboot"
alias shutdown="sudo shutdown"
alias dpsa='docker ps -a --format "table {{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.RunningFor}}\t{{.Status}}\t{{.Names}}"'

# Bind home/end keys cause they don't work :sigh:
bindkey "$terminfo[khome]" beginning-of-line
bindkey "$terminfo[kend]" end-of-line

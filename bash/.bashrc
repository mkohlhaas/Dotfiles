# Path to your oh-my-bash installation.
export OSH=$HOME/.oh-my-bash

OSH_THEME="font"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_OSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# OSH_CUSTOM=/path/to/new-custom-folder

completions=(
  git
  composer
  ssh
  tmux
  go
)

aliases=(
  general
  # ls
)

plugins=(
  git
  npm
  golang
)

source "$OSH/oh-my-bash.sh"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias l1='ls -1l'
alias gaap='git add .; git commit --amend --no-edit ; git push --force'
alias upda='sudo xbps-install -Suy'
alias treed='tree --dirsfirst'
alias ard="mpv --audio-device='pulse/alsa_output.usb-1395_Sennheiser_BTD_500_USB-00.analog-stereo' https://www.ardmediathek.de/live/Y3JpZDovL2Rhc2Vyc3RlLmRlL2xpdmUvY2xpcC9hYmNhMDdhMy0zNDc2LTQ4NTEtYjE2Mi1mZGU4ZjY0NmQ0YzQ?xtor=CS1-322-[navi]-[all]-[content]-[text]"
alias zdf="mpv --audio-device='pulse/alsa_output.usb-1395_Sennheiser_BTD_500_USB-00.analog-stereo' https://www.zdf.de/sender/zdf/zdf-live-beitrag-100.html"
alias welt="mpv --audio-device='pulse/alsa_output.usb-1395_Sennheiser_BTD_500_USB-00.analog-stereo' https://broadcast.welt.personalstream.tv/v1/manifest/e237d596efe8bf8a700f8f91f1de8bbe03e0fe29/welttv-broadcast-prod/41702952-205c-4194-b2ac-f45ac3985d26/6.m3u8"
alias swr3="mpv --audio-device='pulse/alsa_output.usb-1395_Sennheiser_BTD_500_USB-00.analog-stereo' https://liveradio.swr.de/sw282p3/swr3/play.mp3"

export VISUAL="nvim"

# Activate extended globs
shopt -s extglob

# Autocomplete sudo commands
complete -cf sudo

# Colorful manpages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Support for local raylib installation
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/linuxbrew/.linuxbrew/lib/pkgconfig
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/linuxbrew/.linuxbrew/lib

# Homebrew for Linux
# https://brew.sh/
# export PATH=$PATH:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin

# Dart & Flutter support
export CHROME_EXECUTABLE=/usr/bin/chromium
source "$HOME/.completions/flutter.bash-completion"
source "$HOME/.completions/dart.bash-completion"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Vulkan SDK
source "$HOME/VulkanSDK/setup-env.sh"

# Git fuzzy support
export PATH=$PATH:$HOME/bin/git-fuzzy/bin

# YAMLfix - https://lyz-code.github.io/yamlfix/
export YAMLFIX_CONFIG_PATH=$HOME/.yamlfix/

# FZF completion
if [ -f /usr/share/fzf/completion.bash ]; then
  source /usr/share/fzf/completion.bash
fi
if [ -f /usr/share/fzf/key-bindings.bash ]; then
  source /usr/share/fzf/key-bindings.bash
fi

# mpc - Music Player Client - completions
source /usr/share/doc/mpc/contrib/mpc-completion.bash
# mpv - Media playser completions
# source /usr/share/bash-completion/completions/mpv
# uftrace command completions
source /usr/share/bash-completion/completions/uftrace
# Haskell stack completions
# source <(stack --bash-completion-script $(which stack))
# Cabal completions - https://github.com/haskell/cabal/blob/master/cabal-install/bash-completion/cabal
source "$HOME/.completions/cabal"
# GHC completions - https://github.com/ghc/ghc/tree/master/utils/completion
source "$HOME/.completions/ghc.bash"
# Summoner completions - https://kowainik.github.io/projects/summoner
# Summoner is a tool for scaffolding fully configured batteries-included production-level Haskell projects.
# source <(summon --bash-completion-script `which summon`)
# npm completion - https://docs.npmjs.com/cli/v6/commands/npm-completion
source <(npm completion)
# spago completion
# source <(spago --bash-completion-script $(which spago))
# yt-dlp completions
source "$HOME/.completions/yt-dlp"
#erlang.mk completions
source "$HOME/.completions/erlang_mk"
# kerl completions - kerl is a build tool for building Erlang itself
source "$HOME/.completions/kerl"
#rustup
source "$HOME/.completions/rustup"
#cargo
source "$HOME/.completions/cargo"
#cobra-cli
source "$HOME/.completions/cobra-cli.bash-completion"
# jq - does not work
# source $HOME/.completions/jq.bash
# source $HOME/.completions/jq.bash-completion
# task - https://taskfile.dev/
# installation: npm install -g @go-task/cli
source "$HOME/.completions/task.bash"

export PAGER=nvimpager

# Local binaries
export PATH=$PATH:$HOME/bin:$HOME/local/bin:$HOME/.local/bin

# Install Icons-in-Terminal
# https://github.com/sebastiencs/icons-in-terminal
source ~/.local/share/icons-in-terminal/icons_bash.sh

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# export ANDROID_HOME=$HOME/Android_SDK/
# export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin/

# asdf (installed with brew!)
# . "/home/linuxbrew/.linuxbrew/opt/asdf/libexec/asdf.sh"
# . "/home/linuxbrew/.linuxbrew/opt/asdf/etc/bash_completion.d/asdf.bash"

# ruby version manager 'rbenv'
# eval "$(rbenv init - bash)"

# set background picture in this file
# nitrogen itself is configured in .xsession
# .config/nitrogen/bg-saved.cfg
# or use e.g. from the command line
# feh --bg-file Pictures/3YmdDls.jpg

# [CMAKE]: for language server - create compilation database
export CMAKE_EXPORT_COMPILE_COMMANDS=1

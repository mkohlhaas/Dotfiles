# Enable the subsequent settings only in interactive sessions
case $- in
*i*) ;;
*) return ;;
esac

# Path to your oh-my-bash installation.
export OSH='/home/schmidh/.oh-my-bash'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="font"

# If you set OSH_THEME to "random", you can ignore themes you don't like.
# OMB_THEME_RANDOM_IGNORED=("powerbash10k" "wanelo")

# Uncomment the following line to use case-sensitive completion.
# OMB_CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# OMB_HYPHEN_SENSITIVE="false"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you don't want the repository to be considered dirty
# if there are untracked files.
# SCM_GIT_DISABLE_UNTRACKED_DIRTY="true"

# Uncomment the following line if you want to completely ignore the presence
# of untracked files in the repository.
# SCM_GIT_IGNORE_UNTRACKED="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.  One of the following values can
# be used to specify the timestamp format.
# * 'mm/dd/yyyy'     # mm/dd/yyyy + time
# * 'dd.mm.yyyy'     # dd.mm.yyyy + time
# * 'yyyy-mm-dd'     # yyyy-mm-dd + time
# * '[mm/dd/yyyy]'   # [mm/dd/yyyy] + [time] with colors
# * '[dd.mm.yyyy]'   # [dd.mm.yyyy] + [time] with colors
# * '[yyyy-mm-dd]'   # [yyyy-mm-dd] + [time] with colors
# If not set, the default value is 'yyyy-mm-dd'.
# HIST_STAMPS='yyyy-mm-dd'

# Uncomment the following line if you do not want OMB to overwrite the existing
# aliases by the default OMB aliases defined in lib/*.sh
# OMB_DEFAULT_ALIASES="check"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# To disable the uses of "sudo" by oh-my-bash, please set "false" to
# this variable.  The default behavior for the empty value is "true".
OMB_USE_SUDO=true

# To enable/disable display of Python virtualenv and condaenv
# OMB_PROMPT_SHOW_PYTHON_VENV=true  # enable
# OMB_PROMPT_SHOW_PYTHON_VENV=false # disable

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
	git
	composer
	ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
	general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	bashmarks
)

# Which plugins would you like to conditionally load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format:
#  if [ "$DISPLAY" ] || [ "$SSH" ]; then
#      plugins+=(tmux-autoattach)
#  fi

source "$OSH"/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

export PATH=$PATH:$HOME/bin:$HOME/.local/share/gem/ruby/3.0.0/bin

# VTE (Virtual Terminal Emulator) Configuration
source /etc/profile.d/vte.sh

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

alias gaap="git add .;git commit --amend --no-edit;git push --force"

# pipx
# sudo pacman -S python-pipx
# Created by `pipx` on 2024-08-02 23:04:18
export PATH="$PATH:/home/schmidh/.local/bin:/home/schmidh/.local/share/nvim/mason/bin"
eval "$(register-python-argcomplete pipx)"

# PureScript
# source <(spago --bash-completion-script `which spago`)

# Kerl - Erlang
# Build options:
# export KERL_DOC_TARGETS="man html pdf chunks"
# export KERL_DOC_TARGETS="html chunks"
# export KERL_BUILD_DOCS=yes
# export KERL_BUILD_BACKEND=tarball

# ERLANG_VERSION=27.0
# source /home/schmidh/Kerl/$ERLANG_VERSION/activate
# export PATH=/home/schmidh/Kerl/$ERLANG_VERSION/.cache/rebar3/bin:$PATH

# esbuild - https://esbuild.github.io/getting-started/#install-esbuild
export PATH=/home/schmidh/node_modules/.bin/:$PATH

# so man pages can be found
unset MANPATH

# curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
# [ -f "/home/schmidh/.ghcup/env" ] && . "/home/schmidh/.ghcup/env" # ghcup-env

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# Rust
# export PATH=/usr/lib/rustup/bin/:/home/schmidh/.cargo/bin:$PATH

# https://github.com/ohmybash/oh-my-bash/issues/448
source /usr/share/bash-completion/bash_completion
# Godot completions
source "$HOME"/.local/share/bash-completion/completions/godot
complete -d cd

# https://github.com/huyng/bashmarks.git
source ~/.local/bin/bashmarks.sh

set +o noclobber
if command -v zoxide >/dev/null; then
	eval "$(zoxide init bash)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
# Source the Lazyman shell initialization for aliases and nvims selector
# shellcheck source=.config/nvim-Lazyman/.lazymanrc
[ -f ~/.config/nvim-Lazyman/.lazymanrc ] && source ~/.config/nvim-Lazyman/.lazymanrc
# Source the Lazyman .nvimsbind for nvims key binding
# shellcheck source=.config/nvim-Lazyman/.nvimsbind
[ -f ~/.config/nvim-Lazyman/.nvimsbind ] && source ~/.config/nvim-Lazyman/.nvimsbind

# https://lazyman.dev/install/
# export NVIM_APPNAME="nvim-Lazyman"

# asdf
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# vcpkg
export VCPKG_ROOT=$HOME/.local/share/vcpkg
export PATH=$PATH:$VCPKG_ROOT
export VCPKG_DISABLE_METRICS=TRUE
alias update-vcpkg='git -C $VCPKG_ROOT pull'

# Vue devtools (open in nvim editor)
export LAUNCH_EDITOR=editor-launcher.sh

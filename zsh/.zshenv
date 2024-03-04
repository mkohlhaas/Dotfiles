path+=(
    ~/bin
    ~/.cargo/bin
    ~/.zfunc
    ~/.local/bin/
    ~/.npm/bin
)

autoload -U zmv

alias info='pinfo'
alias deflate="perl -MCompress::Zlib -e 'undef $/; print uncompress(<>)'"
alias vl='videoLengths.sh'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'

export BAT_PAGER='less -R'
# export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime-type {}) =~ sharedlib ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy),ctrl-x:execute(rm -i {+})+abort'"
export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='(bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy),ctrl-x:execute(rm -i {+})+abort'"
. "$HOME/.cargo/env"

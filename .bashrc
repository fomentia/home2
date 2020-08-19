#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/liquidprompt/liquidprompt

alias ls='ls --color=auto'
alias maimclip='maim -s -u | xclip -selection clipboard -t image/png -i'
alias dots="git --git-dir=$HOME/dots --work-tree=$HOME"
alias tracked="cat $HOME/.config/trackfile"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias oops)

source /usr/share/bash-completion/completions/git

e() {
    emacsclient -s ~/.emacs.d/server/server -nw ${1:-.}
}

alias g="git"
__git_complete g _git
alias gs="git status"
__git_complete gs _git_status
alias gl="git log"
__git_complete gl _git_log
alias ga="git add"
__git_complete ga _git_add
alias gp="git push --follow-tags"
__git_complete gp _git_push
alias gpu="git pull --ff-only"
__git_complete gpu _git_pull
alias gr="git rebase"
__git_complete gr _git_rebase
alias gc="git commit"
__git_complete gc _git_commit
alias gco="git checkout"
__git_complete gco _git_checkout
alias gd="git diff"
__git_complete gd _git_diff

export PATH="$PATH:$HOME/.local/bin/:$HOME/.cargo/bin"

export EDITOR="emacsclient -s ~/.emacs.d/server/server -nw"
export VISUAL="emacsclient -s ~/.emacs.d/server/server -nw"

source $HOME/.bashrc_private

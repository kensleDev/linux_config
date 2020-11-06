HOME_DIR=/home/kd

export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=jjkkalways --style=header,grid --line-range :300 {}'"
# [ -f $HOME_DIR/.fzf.bash ] && source $HOME_DIR/.fzf.bash

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

source $HOME_DIR/.alias
alias loadnvm=". $HOME_DIR/.nvm/nvm.sh"
source $HOME_DIR/.oh-my-zsh/plugins/antigen.zsh
source $HOME_DIR/.config/init/scripts/project_launcher


# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme
antigen theme awesomepanda

# Tell antigen that you're done
antigen apply

[ -f $HOME_DIR/.fzf.zsh ] && source $HOME_DIR/.fzf.zsh

export FZF_DEFAULT_OPS="--extended"

GOPATH=$HOME/go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -error $?)"
}
if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

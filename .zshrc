# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '{%b}'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n::${PWD/#$HOME/~}${vcs_info_msg_0_}:'

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

alias vp='vi ~/.zshrc && source ~/.zshrc'
alias ll='ls -al'
alias py='python'
alias wk='cd ~/work'
function his {
    history | grep "$1"
}
alias ho='sudo vi /etc/hosts'

alias dcu='docker-compose up'
alias dcd='docker-compose down'
alias di='docker image'
function de {
    docker exec -it "$1" /bin/bash
}

alias gs='git status'
alias gits='gs'
alias gd='git diff'
alias ga='git add'
alias gitd='git diff'
alias gitck='git checkout --'
alias gk='gitck'
alias gc='git commit -m'
alias gitco='git checkout'
function gcb {
    git checkout -b "feature/$1"
}
alias gp='git push'

alias dp='docker ps --format "{{.ID}}:\t{{.Names}}\t{{.Command}}"'
alias tf='terraform'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

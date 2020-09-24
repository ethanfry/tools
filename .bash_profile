source ~/.git-completion.bash

#export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

venv () {
    echo $PWD
    IFS='/'; arrIN=($PWD); unset IFS;
    echo $arrIN[-1]
    #echo (${PWD//;/ })[-1]
}
alias py='python'
alias tf='terraform'
alias vp='vi ~/.bash_profile && source ~/.bash_profile'
alias wk='cd ~/work'
alias dk='docker'
alias dcd='docker-compose down'
alias dcu='docker-compose up'
alias dcv='docker-compose down -v'
alias ll='ls -al'
alias gitc='git commit -m'
alias gc='gitc'
alias gp='git push'
alias ga='git add'
alias gd='git diff'
alias gits='git status'
alias gs='gits'
alias gk='git checkout --'
alias gck='git checkout --'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

complete -C /usr/local/bin/terraform terraform

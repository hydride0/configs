PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# azzoppati {{{
[ -s "${ZDOTDIR:-$HOME}/.zoppo/zoppo.zsh" ] && source "${ZDOTDIR:-$HOME}/.zoppo/zoppo.zsh"
# }}}

alias ls='ls --color=auto'
alias rm='rm'
alias push='git push'
alias y='yaourt -Syua'
alias yr='yaourt -Rs'
alias yi='yaourt -S'
alias merge='git merge'

commit() {
	git commit -m "$1"
}

clone() {	
	git clone "https://github.com/$1"
}

fetch() {
	git fetch "https://github.com/$1"
}

sprunge() {
	cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}

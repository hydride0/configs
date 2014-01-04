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
alias add='git add'
alias pull='git pull'

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

# Split a flac in several flacs by giving the proper .cue, then it fixes flacs' metadatas and finally it cleans directory 
split() {
	cuebreakpoints $1 | shnsplit -o flac "`echo $1 | sed 's/.\{4\}$//'`"
	rm "`echo $1 | sed 's/.\{4\}$//'`" && cuetag.sh $1 *.flac && rm *.cue
}

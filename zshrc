ZSH=$HOME/.oh-my-zsh
ZSH_THEME="fox"
plugins=(vi-mode)

source $ZSH/oh-my-zsh.sh


export PATH="/home/hyd/bin:/home/hyd/.local/bin:/home/hyd/.local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/home/hyd/.rvm/gems/ruby-2.0.0-p353/bin:/home/hyd/.rvm/gems/ruby-2.0.0-p353@global/bin:/home/hyd/.rvm/rubies/ruby-2.0.0-p353/bin:/home/hyd/.rvm/bin:/usr/bin/core_perl:/home/hyd/.rvm/bin"

alias s='sudo shutdown now'
alias rb='sudo reboot'
alias ls='ls --color=auto'
alias rm='rm'
alias push='git push'
alias y='yaourt -Syua'
alias yr='yaourt -Rs'
alias yi='yaourt -S'
alias merge='git merge'
alias add='git add'
alias pull='git pull'
alias vim='~/Git/neovim/build/src/vim'

commit() {
	git commit -m "$1"
}

clone() {
	git clone "https://github.com/$1"
}

fetch() {
	git fetch "https://github.com/$1.git"
}

sprunge() {
	cat $1 | curl -F 'sprunge=<-' http://sprunge.us
}

img() {
	curl -s -F "image=@$1" -F "key=b3625162d3418ac51a9ee805b1840452" http://imgur.com/api/upload.xml | grep -E -o "<original_image>(.)*</original_image>" | grep -E -o "http://i.imgur.com/[^<]*"
}

split() {
	cuebreakpoints $1 | shnsplit -o flac "`echo $1 | sed 's/.\{4\}$//'`"
	rm "`echo $1 | sed 's/.\{4\}$//'`" && cuetag.sh $1 *.flac && rm *.cue
}



ZSH=$HOME/.oh-my-zsh
ZSH_THEME="wintersun"
plugins=(vi-mode)
source $ZSH/oh-my-zsh.sh
export PATH="$PATH:/home/hyd/.rvm/gems/ruby-2.1.1/bin:/home/hyd/.rvm/gems/ruby-2.1.1/bin:/home/hyd/.rvm/rubies/ruby-2.1.1/bin:/home/hyd/.rvm/bin:/usr/bin/core_perl:/home/hyd/.rvm/bin:/home/hyd/bin:/home/hyd/.local/bin:/home/hyd/.local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"

alias shut='sudo shutdown now'
alias rb='sudo reboot'
alias ls='ls --color=auto'
alias rm='rm'
alias push='git push'
alias y='yaourt -Syua'
alias merge='git merge'
alias add='git add'
alias pull='git pull'
alias alsamixer='alsamixer -g'

commit() {
	git commit -m "$1"
}

clone() {
	git clone "https://github.com/$1"
}

fetch() {
	git fetch "https://github.com/$1.git"
}

text() {
	curl -F "text=@$1" pasteling.giovannicapuano.net/api/new
}

img() {
	curl -s -F "image=@$1" -F "key=b3625162d3418ac51a9ee805b1840452" http://imgur.com/api/upload.xml | grep -E -o "<original_image>(.)*</original_image>" | grep -E -o "http://i.imgur.com/[^<]*"
}

split() {
	cuebreakpoints $1 | shnsplit -o flac "`echo $1 | sed 's/.\{4\}$//'`"
	rm "`echo $1 | sed 's/.\{4\}$//'`" && cuetag.sh $1 *.flac && rm *.cue
}

twitch() {
	livestreamer $1 high --player mpv &
}

connect() {
	sudo iw dev wlp3s0 connect $1 key 0:$2
}

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

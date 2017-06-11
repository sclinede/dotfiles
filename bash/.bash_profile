source ~/.profile

alias tmux="TERM=screen-256color-bce tmux"

export EDITOR=vim
export TERM=screen-256color
# export RUBY_GC_MALLOC_LIMIT=1000000000
# export RUBY_FREE_MIN=500000
# export RUBY_HEAP_MIN_SLOTS=40000

export WORQUE_PATH="$HOME/Dropbox/Notes/Todos"
alias today="vim $(worque todo) +':cd $WORQUE_PATH'"
alias ytd="vim $(worque todo --for=yesterday) +':cd $WORQUE_PATH'"

# Top size files/folders
# alias ducks='du -cks * | sort -rn | head'
alias ducks='du -hsx * | sort -rh | head -10'

# Transfer.sh
# Add this to .bashrc or its equivalent
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }

# GO:
export GOROOT=/usr/local/go
export GOBIN=$GOROOT/bin
export GOPATH=$HOME/gocode
export PATH=$GOBIN:$PATH
export GOARCH=""
export GOOS=""
# Old version config
# export GOROOT=$HOME/go
# export GOPATH=$HOME/gocode
# export PATH=$PATH:$GOROOT/bin
# export PATH=$GOBIN:$PATH

# export GOARCH=amd64
# export GOOS=linux

# WRONG:
# SSH_AUTH_SOCK=`netstat -xl | grep -o '/tmp/keyring-.*/ssh$'`
# [ -z "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK

# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# export SSH_AUTH_SOCK

# . ~/.gkr
# eval $(ssh-agent)
# ssh-add ~/.ssh/dolganov-20130517
# eval $(keychain --eval dolganov-20130517)
eval $(keychain --eval --quiet dolganov-20130517)
cd ..;cd -

stty -ixon


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile
alias tmux="TERM=screen-256color-bce tmux"

export EDITOR=vim
export TERM=screen-256color
# export RUBY_GC_MALLOC_LIMIT=1000000000
# export RUBY_FREE_MIN=500000
# export RUBY_HEAP_MIN_SLOTS=40000

# WRONG:
# SSH_AUTH_SOCK=`netstat -xl | grep -o '/tmp/keyring-.*/ssh$'`
# [ -z "$SSH_AUTH_SOCK" ] || export SSH_AUTH_SOCK

# eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
# export SSH_AUTH_SOCK

eval $(ssh-agent)
ssh-add ~/.ssh/dolganov-20130517
cd ..;cd -

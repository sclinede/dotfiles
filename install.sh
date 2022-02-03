if [ "$SPIN" ]; then
  echo "export EDITOR=vim" >> ~/.zshrc
  ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
  
  if ! command -v tig &> /dev/null; then
    sudo apt-get install -y tig
  fi
  if ! command -v ag &> /dev/null; then
    sudo apt-get install -y silversearcher-ag    
  fi
  sudo gem install solargraph
fi


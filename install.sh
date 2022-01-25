if [ "$SPIN" ]; then
  echo "EDITOR=vim" >> ~/.zshrc
  ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
  if ! command -v rg &> /dev/null; then
    sudo apt-get install -y tig
  fi
fi


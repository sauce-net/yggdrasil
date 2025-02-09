configure_shell () {
  echo "installing ohmyposh..."
  curl -s https://ohmyposh.dev/install.sh | bash -s
  p_done
  echo "configuring zsh..."
  git clone git@github.com:codyconfer/.sauce.git ~/.sauce
  sudo apt install zsh -y
  rm .zshrc
  cp ~/.sauce/configs/.zshrc .zshrc
  chsh -s $(which zsh)
  p_done
}

configure_shell

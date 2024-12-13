GENERAL=(google-chrome notion slack figma deepl raycast)
DEVELOPMENT=(iterm2 visual-studio-code cursor lazygit proxyman ngrok act)

# Install general packages
brew install --cask \
  google-chrome \
  notion \
  slack \
  figma \
  deepl \
  raycast \
  lazydocker

# Install development packages
brew install --cask \
  iterm2 \
  cursor \
  visual-studio-code \
  lazygit \
  proxyman \
  ngrok \
  act

# Install App Store packages (KakaoTalk, Magnet)
brew install mas
mas install 869223134 441258766


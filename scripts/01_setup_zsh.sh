# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
brew install \
  zsh-autosuggestions \
  zsh-syntax-highlighting

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i "s/^ZSH_THEME=.*/ZSH_THEME=\"powerlevel10k/powerlevel10k\"/" "$ZSHRC_PATH"

# Copy zsh-scripts to ~/.zsh-scripts
cp -r zsh-scripts ~/.zsh-scripts

# Insert source commands into .zshrc
echo "source ~/.zsh-scripts/zsh-plugin.zsh" >> ~/.zshrc
echo "source ~/.zsh-scripts/zsh-alias.zsh" >> ~/.zshrc

source ~/.zshrc
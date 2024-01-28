apt-get update;
echo "yes" | sudo apt-get upgrade;
echo "yes" | apt-get install zsh;


touch ~/.zshrc;
sh -c "$(curl -fsSL https://git.io/zinit-install)";
cp .zshrc -f ~/.zshrc;
source ~/.zshrc;
zinit self-update;

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k;
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc;

cat settings.txt >> ~/.zshrc;

echo "yes" |apt-get install vim;
cp -f .vimrc  ~/.vimrc;

chsh -s /usr/bin/zsh;

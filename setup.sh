echo "yes" | sudo apt-get update;
echo "yes" | sudo apt-get upgrade;
echo "yes" | sudo apt-get install zsh;
echo "yes" | sudo apt-get install vim;


touch ~/.zshrc;
sh -c "$(curl -fsSL https://git.io/zinit-install)";
cp .zshrc -f ~/.zshrc;
source ~/.zshrc;
sudo zinit self-update;

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k;
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc;

cat settings.txt >> ~/.zshrc;

cp -f .vimrc  ~/.vimrc;

chsh -s /usr/bin/zsh;

sudo apt-get update && sudo apt-get upgrade;
sudo apt-get install zsh;

# エラー回避
touch ~/.zshrc;
sh -c "$(curl -fsSL https://git.io/zinit-install)";
cp .zshrc -f ~/.zshrc;
source ~/.zshrc;
zinit self-update;

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k;
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc;

cat settings.txt >> ~/.zshrc;

chsh -s /usr/bin/zsh;
reboot;
# centos
# 安装 zsh
yum install -y zsh
chsh -s /bin/zsh

yum install -y git

# 安装oh-my-zsh（自动）
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# 下载 zshrc 配置
wget https://raw.githubusercontent.com/zcsh0721/settings/main/zsh/zshrc -O ~/.zshrc

# zsh 自动补全
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting 语法高亮
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



source ~/.zshrc
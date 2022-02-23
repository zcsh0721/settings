# 安装 zsh
yum install -y zsh
chsh -s /bin/zsh

yum install -y git

# 安装oh-my-zsh（自动）
# 设置终端代理
# export https_proxy=http://192.168.34.130:1090 http_proxy=http://192.168.34.130:1090 all_proxy=socks5://192.168.34.130:1090
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# zsh 自动补全
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting 语法高亮
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
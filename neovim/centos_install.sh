# 下载 neovim 安装包
wget https://github.com/neovim/neovim/releases/download/v0.6.1/nvim-linux64.tar.gz

# 安装
tar xvf nvim-linux64.tar.gz
mv nvim-linux64 /usr/local/

# 创建软连接
ln -s /usr/local/nvim-linux64/bin/nvim /bin/nvim


# 创建配置文件
mkdir -p  ~/.config/nvim
touch ~/.config/nvim/init.vim

# 插件目录创建




# 安装 zsh
yum install -y zsh
chsh -s /bin/zsh

yum install -y git

# 安装oh-my-zsh（自动）
# 设置终端代理
# export https_proxy=http://192.168.34.130:1090 http_proxy=http://192.168.34.130:1090 all_proxy=socks5://192.168.34.130:1090
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


# 下载 zshrc 配置
wget https://raw.githubusercontent.com/zcsh0721/settings/main/zsh/zshrc -O ~/.zshrc

# zsh 自动补全
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting 语法高亮
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



source ~/.zshrc
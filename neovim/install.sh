# CentOS 8 / RHEL 8


yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum install -y neovim python3-neovim

# 创建配置文件
mkdir -p  ~/.config/nvim
touch ~/.config/nvim/init.vim


wget https://raw.githubusercontent.com/zcsh0721/settings/main/neovim/init.vim -O ~/.config/neovim/init.vim
echo 'alias vim=nvim' >> ~/.zshrc
echo "进入 nvim 执行 \n :PlugInstall  \n 已安装 nvim 插件"
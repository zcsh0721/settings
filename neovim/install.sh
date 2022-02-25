# CentOS 8 / RHEL 8

yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum install -y neovim python3-neovim

# 下载配置文件
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/zcsh0721/settings/main/neovim/init.vim

# 下载 vim-plug 
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'alias vim=nvim' >> ~/.zshrc
echo "进入 nvim 执行 \n :PlugInstall  \n 已安装 nvim 插件"
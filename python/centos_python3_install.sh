python_version=3.8.12

# 安装环境依赖
yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel
# 安装 gcc 编译器
yum install gcc -y

# 下载  python3 安装包
wget "https://www.python.org/ftp/python/${python_version}/Python-${python_version}.tgz"

# 安装
mv "Python-${python_version}.tgz" /usr/local/

# 在local目录下创建Python3目录
mkdir /usr/local/python3


# 进入的Python安装包压缩包所在的目录
cd /usr/local/ 
# 解压
tar -xvf "Python-${python_version}.tgz"

# 进入解压后的目录
cd "/usr/local/Python-${python_version}/"

# 配置安装目录
./configure --prefix=/usr/local/python3

# 编译源码
make

# 执行源码安装
make install

# 创建软连接
ln -s /usr/local/python3/bin/python3  /usr/bin/python3

# 删除安装包和目录
rm -rf "/usr/local/Python-${python_version}"
rm -rf "/usr/local/Python-${python_version}.tgz"


#安装 pip3.8
yum install -y python38-pip

# 设置 pip 配置文件, 配置镜像
mkdir ~/.pip3
wget  "https://raw.githubusercontent.com/zcsh0721/settings/main/python/pip.conf" -O ~/.pip3/pip.conf
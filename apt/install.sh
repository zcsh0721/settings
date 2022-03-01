cp -f /etc/apt/sources.list /etc/apt/sources.bak1
ln -sb "${ZCSH_SETTING_DIR}/apt/sources.list" /etc/apt/sources.list
apt update
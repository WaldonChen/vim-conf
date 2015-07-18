我的VIM配置
=============

安装方法
--------------

1. 克隆vim-conf仓库

```shell
git clone https://gitlab.com/waldonchen/vim-conf.git $VIM_CONF_DIR
```

2. 安装Vundle.vim插件
    
```shell
cd $VIM_CONF_DIR
git submodule init
git submodule update
```

3. 分别链接vimrc和vim到$HOME/.vimrc和$HOME/.vim

```shell
ln -s $VIM_CONF_DIR/vimrc $HOME/.vimrc
ln -s $VIM_CONF_DIR/vim $HOME/.vim
```

4. 安装其他插件

```shell
vim +PluginInstall +qall
```

Installation:

    git clone git://github.com/drali/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Add the powerline fonts:

    cd ~/source/
    git clone https://github.com/powerline/fonts.git fonts
    cd fonts
    bash ./install.sh

Install fuzzfinder:

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

Since I use tmux and Terminus font, there's a known [bug with the powerline fonts](https://github.com/powerline/fonts/issues/50). To get around it, I had to allow bitmap fonts. There's a step not listed in the link provided:

    cd /etc/fonts/conf.d/
    _sudo rm 70-no-bitmaps.conf_
    ln -s ../conf.avail/70-yes-bitmaps.conf

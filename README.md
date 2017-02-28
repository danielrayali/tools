Installation:

    git clone git://github.com/drali/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

If you use tmux, you can use the provide tmux.conf

    ln -s ~/.vim/tmux.conf ~/.tmux.conf
    tmux kill-server # Will kill current tmux sessions but will reload config on next instance

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Add the powerline fonts:

    cd
    mkdir -p source/fonts
    git clone https://github.com/powerline/fonts.git source/fonts
    cd source/fonts
    bash ./install.sh

Install fuzzfinder:

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

In my traditional setup (Ubuntu 14.04/gnome-terminal/tmux/Terminus), there's a known [bug with the powerline fonts](https://github.com/powerline/fonts/issues/50). To get around it, I had to allow bitmap fonts. There's a step not listed in the link provided:

    cd /etc/fonts/conf.d/
    sudo rm 70-no-bitmaps.conf # The non-provided step
    ln -s ../conf.avail/70-yes-bitmaps.conf

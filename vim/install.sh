#!/bin/bash

source `dirname $0`/../config.sh

install_on_mac() {
  brew_install macvim --with-cscope --override-system-vim --with-lua
  create_vim_bin_symlink

  brew_install ctags
  brew_install the_silver_searcher # ag
  brew_install tidy
}

create_vim_bin_symlink() {
  latest_vim=`/bin/ls -1 -d /usr/local/Cellar/macvim/7.* | sort -n | tail -1`
  symlink $latest_vim/bin/vim /usr/bin/vim
}

install_on_linux() {
  apt_install vim-gnome exuberant-ctags tidy

  if [ "$HAS_GUI" = "yes" ]; then
    bullet "Installing Powerline fonts\n"
    bash "$DOTF/vim/powerline-fonts/install.sh"
  fi

  #add_ppa tomaz-muraus/the-silver-searcher
  #apt_install the-silver-searcher
  install_deb the-silver-searcher http://swiftsignal.com/packages/ubuntu/quantal/the-silver-searcher_0.14-1_amd64.deb
}

install_symlinks() {
  symlink "$DOTF/vim/vimrc" ~/.vimrc
  symlink "$DOTF/vim" ~/.vim
  symlink "$DOTF/vim/bundle/supertagger/ctags" ~/.ctags
  symlink "$DOTF/vim/pylintrc" ~/.pylintrc
}

install_vundle() {
  cd ~/.vim
  git_clone http://github.com/gmarik/vundle.git bundle/vundle
  bullet "Running BundleInstall... "
  vim +BundleInstall +qall
  success "done"
}

compile_youcompleteme() {
  # required to compile YouCompleteMe
  brew_install cmake

  bullet "Compiling YouCompleteMe... "
  if [[ -e "$DOTF/vim/bundle/YouCompleteMe/python/ycm_core.so" ]]; then
    info 'Already compiled.'
  else
    (
      cd $DOTF/vim/bundle/YouCompleteMe
      ./install.sh
    )
  fi
}

install_utils() {
  npm_install vimspec
  npm_install coffeelint
  npm_install jshint
  npm_install jsonlint
  npm_install marked
  pip_install pylint
  pip_install powerline-status
}

header "Vim"
if [ "$1" == "symlinks" ]; then
  install_symlinks
elif [ "$1" == "basic" ]; then
  install_symlinks
  install_vundle
else
  if [ "`uname -s`" == "Darwin" ]; then
    install_on_mac
  else
    install_on_linux
  fi

  install_symlinks
  install_vundle
  compile_youcompleteme
  install_utils
fi

#!/bin/bash

echo ""
echo "========================================"
echo "Installing rvm requirements"
echo "========================================"
# run "rvm requirements" and you get this list of packages:
sudo apt-get install -y build-essential openssl libreadline6 libreadline6-dev curl \
  git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev \
  sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool \
  bison subversion

#sudo apt-get install -y libreadline-gplv2-dev libreadline-dev
sudo apt-get install -y libreadline-dev

echo ""
echo "========================================"
echo "Installing RVM"
echo "========================================"
bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )

. $HOME/.rvm/scripts/rvm

echo "========================================"
echo "Installing Ruby 1.9.3"
echo "========================================"

rvm install 1.9.3
rvm use --default 1.9.3

echo "========================================"
echo "Installing Rails"
echo "========================================"
gem install rails

echo "========================================"
echo "Installing Nokogiri Gem + prerequisits"
echo "========================================"
sudo apt-get install -y libxslt1-dev libxml2-dev
gem install nokogiri

echo "========================================"
echo "Installing Extra Gems"
echo "========================================"
gem install clipboard
gem install rspec
# wirble improves irb (syntax highlighting, autocomplete, ...)
gem install wirble 
gem install cucumber
gem install capybara

echo "========================================"
echo "Creating symbolic links"
echo "========================================"

DIR=$(dirname "${BASH_SOURCE[0]}")
DIR=$(cd -P $DIR && pwd)

ln -sf "$DIR/irbrc" ~/.irbrc

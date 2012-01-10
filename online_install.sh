#!/bin/bash

# This script should be run directly from the online repository like this:
# curl -L https://bitbucket.org/3david/linux-config/raw/1b4675df052a/online_install.sh | sh

(
  cd ~
  mkdir projects
  cd projects

  git clone https://hg@bitbucket.org/3david/linux-config
  git clone https://hg@bitbucket.org/3david/vimconfig

  ./vimconfig/create-symlink.sh
  sudo ./linux-config/setup.sh
)

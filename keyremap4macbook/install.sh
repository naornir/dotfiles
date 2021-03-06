#!/bin/bash

# Most of these settings where taken from Steve losh:
# http://stevelosh.com/blog/2012/10/a-modern-space-cadet/#controlescape

source `dirname $0`/../config.sh

INSTALLED="no"

cli=/Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli

check_if_installed() {
  if [ -x $cli ]; then
    INSTALLED="yes"
  else
    error "KeyRemap4MacBook is not installed,"
    echo "  please install from http://pqrs.org/macosx/keyremap4macbook/"
  fi
}

header "KeyRemap4MacBook"
check_if_installed

if [ $INSTALLED == "yes" ]; then
  bullet "Setting up"
  source $DOTF/keyremap4macbook/settings.sh
fi

#!/bin/sh
set -e

echo fetching...
cygport clisp.cygport fetch

echo prepping...
cygport clisp.cygport prep

echo compiling...
cygport clisp.cygport compile

# echo installing...
# cygport clisp.cygport inst

# echo packaging...
# cygport clisp.cygport pkg

echo testing...
cygport clisp.cygport test

tar -cJf artifact.tar.xz clisp-*/dist clisp-*/log

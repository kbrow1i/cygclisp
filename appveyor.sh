#!/bin/sh
exit_status=0

cygport clisp.cygport fetch prep compile || exit_status=1

if [ $exit_status -eq 0 ]
then
    # cygport clisp.cygport inst pkg || exit_status=1
    cygport clisp.cygport test || echo "Test(s) failed."
fi

tar -cJf artifact.tar.xz clisp-*/dist clisp-*/log

exit $exit_status

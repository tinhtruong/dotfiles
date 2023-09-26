#!/usr/bin/env bash

# SSH will execute this script to determine if it should use the configuration of
# a `Match` block (see id_other_bitbucket/config and id_tinhtruong_bitbucket/config) to connect to a host.
# The script will look for the SSH process which connect to git@bitbucket.org and then further
# grep for the username specified by the first argument passed in ($1), for example `tinhtruong`

# An example of matched process details as following:
# 11586 ttys000 0:00.00 /usr/bin/ssh -o SendEnv=GIT_PROTOCOL git@bitbucket.org git-upload-pack 'tinhtruong/dotfiles.git'

matched=`ps -ax | grep git@bitbucket.org | grep $1`

if [ -z "$matched" ] # matched is empty
then
      exit 1
fi
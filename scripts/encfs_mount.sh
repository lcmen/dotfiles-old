#!/bin/bash

# Secure EncFS Dropbox mounter by Daniel Widerin <daniel@widerin.net>

SOURCE=~/Dropbox/Private.enc
TARGET=~/Private
VOLUME_TITLE=Private
KEYCHAIN_PASSWORD='encfs'
ENCFS=/usr/local/bin/encfs

mount | grep $TARGET >/dev/null
[[ "$?" -eq "0" ]] && /usr/sbin/diskutil unmount $TARGET

if [ ! -d $TARGET ]; then
 echo "Create new mountpoint $TARGET"
 mkdir $TARGET
 chmod 0700 $TARGET
fi

$ENCFS $SOURCE $TARGET --extpass="security 2>&1 >/dev/null find-generic-password -gl '$KEYCHAIN_PASSWORD' |grep password|cut -d \\\" -f 2" -ovolname=$VOLUME_TITLE

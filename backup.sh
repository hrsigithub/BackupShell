#!/bin/zsh

/usr/bin/rsync -avh --progress --delete --inplace --partial /Volumes/tp-share/03_music /Volumes/Time\ Capsle/TPShereBackup/
/usr/bin/rsync -avh --progress --delete --inplace --partial /Volumes/tp-share/02-soft /Volumes/Time\ Capsle/TPShereBackup/
/usr/bin/rsync -avh --progress --delete --inplace --partial /Volumes/tp-share/99_エミュレータ /Volumes/Time\ Capsle/TPShereBackup/

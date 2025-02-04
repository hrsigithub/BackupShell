#!/bin/zsh

/usr/bin/rsync -avh --ignore-errors --progress --delete --inplace --partial /Volumes/tp-share/03_music /Volumes/Time\ Capsle/TPShereBackup/
/usr/bin/rsync -avh --ignore-errors --progress --delete --inplace --partial /Volumes/tp-share/02-soft /Volumes/Time\ Capsle/TPShereBackup/
/usr/bin/rsync -avh --ignore-errors --progress --delete --inplace --partial /Volumes/tp-share/99_エミュレータ /Volumes/Time\ Capsle/TPShereBackup/
/usr/bin/rsync -avh --ignore-errors --progress --delete --inplace --partial /Volumes/tp-share/01_動画 /Volumes/Time\ Capsle/TPShereBackup/
/usr/bin/rsync -avh --ignore-errors --progress --delete --inplace --partial /Volumes/tp-share/04_fromBray /Volumes/Time\ Capsle/TPShereBackup/

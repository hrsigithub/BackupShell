#!/bin/zsh


# 重複ファイルの検出結果をファイルに保存しつつ画面に表示
# fdupes -r /Volumes/tp-share | tee /Users/hrsi/dev/BackupShell/duplicates.txt


# 重複ファイルの削除結果をファイルに保存しつつ画面に表示
# fdupes -rdN --exclude="._*" /Volumes/tp-share | tee /Users/hrsi/dev/BackupShell/deleted_files.txt

# find /Volumes/tp-share -type f ! -name "._*" ! -name ".*" -print0 | xargs -0 fdupes -rdN | tee /Users/hrsi/dev/BackupShell/deleted_files.txt
# find /Volumes/tp-share/03_music -type f ! -name "._*" ! -name ".*" -print0 | xargs -0 fdupes -rdN | tee /Users/hrsi/dev/BackupShell/music_deleted_dupfiles.txt


# 対象ディレクトリ
# target_dir="/Volumes/tp-share/03_music"
target_dir="/Volumes/tp-share/08_写真"

# ハッシュ値とファイル名を保存するファイル
hash_list="/Users/hrsi/dev/BackupShell/hash_list.txt"

# ハッシュリストをクリア
> "$hash_list"

# ファイルごとにmd5ハッシュを計算して保存
# find "$target_dir" -type f ! -name "._*" ! -name ".*" -exec md5 {} \; | awk '{print $4, $1}' >> "$hash_list"

find "$target_dir" -type f ! -name "._*" ! -name ".*" -exec echo "Processing: {}" \; -exec md5 {} \; | awk '{print $4, $1}' >> "$hash_list"


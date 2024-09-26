#!/bin/zsh

# 重複ファイルリストのファイル
duplicate_list="/Users/hrsi/dev/BackupShell/duplicate_files.txt"

# 重複ファイルのリストを作成（同じハッシュ値のファイルをリストアップ）
awk '{print $1}' "$hash_list" | sort | uniq -d > "$duplicate_list"

# 重複しているファイルを削除
while read hash; do
    files=$(grep "$hash" "$hash_list" | awk '{print $2}')
    first_file=$(echo "$files" | head -n 1)
    echo "Keeping: $first_file"
    echo "$files" | tail -n +2 | while read file; do
        echo "Deleting duplicate: $file"
        rm -f "$file"
    done
done < "$duplicate_list"

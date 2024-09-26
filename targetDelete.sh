#!/bin/zsh

# 隠しファイル削除
# sudo find /Volumes/tp-share/03_music -name ".*" -type f -delete 2>/dev/null


# sudo find /Volumes/tp-share/03_music -name ".*" -type f -print -exec sudo rm "{}" \; | tee /Users/hrsi/dev/BackupShell/deleted_files_music.log
# sudo find /Volumes/tp-share/99_エミュレータ -name ".*" -type f -print -exec sudo rm "{}" \; | tee /Users/hrsi/dev/BackupShell/deleted_files_emu.log




# 対象ディレクトリのリスト
target_dirs=(
    "/Volumes/tp-share/03_music"
    "/Volumes/tp-share/99_エミュレータ"
    "/Volumes/tp-share/01_動画"
)

# 各ディレクトリに対して処理を実行
for target_dir in "${target_dirs[@]}"; do
    echo "Starting dot_clean on $target_dir..."
    start_time=$(date +%s)

    # dot_clean を実行
    dot_clean "$target_dir"

    # '._' ファイルの確認
    echo "Checking for remaining '._' files in $target_dir..."
    find "$target_dir" -type f -name "._*" -print

    # 処理完了メッセージを表示
    end_time=$(date +%s)
    elapsed_time=$((end_time - start_time))

    echo "dot_clean has completed on $target_dir."
    echo "Elapsed time: $elapsed_time seconds."
    echo "---------------------------------------"
done

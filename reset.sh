#!/bin/bash
BASE_DIR="$HOME/tmp_new_disk"
# Удалить каталог и его содержимое
if [ -d $BASE_DIR ]; then
    rm -rf $BASE_DIR
    echo "Файловая система в $BASE_DIR удалена."
else
    echo "Файловая система не найдена."
fi
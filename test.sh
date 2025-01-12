#!/bin/bash
BASE_DIR="$HOME/tmp_new_disk"
# Проверить, существует ли каталог
if [ -d $BASE_DIR ]; then
    echo "Файловая система найдена в $BASE_DIR."
    echo "Количество файлов: $(ls $BASE_DIR | wc -l)"
else
    echo "Файловая система не найдена."
fi

echo "Open ports on local system:"
ss -tuln
#!/bin/bash
BASE_DIR="$HOME/tmp_new_disk"
# Создать виртуальную файловую систему
mkdir -p $BASE_DIR || { echo "Не удалось создать $BASE_DIR"; exit 1; }
# Проверить успешность создания каталога 
if [ -d $BASE_DIR ]; then
    echo "Каталог $BASE_DIR успешно создан."
else
    echo "Ошибка: каталог $BASE_DIR не был создан."
    exit 1
fi
# Заполнить каталог файлами
for i in $(seq 1 10); do
    touch $BASE_DIR/file_$i
done
echo "Файловая система создана в $BASE_DIR."
# Проверка доступности IP-адресов
echo "Checking of IP address..."
for ip in 8.8.8.8 1.1.1.1; do
    if ping -c 1 $ip &>/dev/null; then
        echo "$ip is available"
    else
        echo "$ip is not available"
    fi
done
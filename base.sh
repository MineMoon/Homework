#!/bin/bash
BASE_DIR="$HOME/tmp_new_disk"
# ������� ����������� �������� �������
mkdir -p $BASE_DIR || { echo "�� ������� ������� $BASE_DIR"; exit 1; }
# ��������� ���������� �������� �������� 
if [ -d $BASE_DIR ]; then
    echo "������� $BASE_DIR ������� ������."
else
    echo "������: ������� $BASE_DIR �� ��� ������."
    exit 1
fi
# ��������� ������� �������
for i in $(seq 1 10); do
    touch $BASE_DIR/file_$i
done
echo "�������� ������� ������� � $BASE_DIR."
# �������� ����������� IP-�������
echo "Checking of IP address..."
for ip in 8.8.8.8 1.1.1.1; do
    if ping -c 1 $ip &>/dev/null; then
        echo "$ip is available"
    else
        echo "$ip is not available"
    fi
done
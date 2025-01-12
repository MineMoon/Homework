#!/bin/bash
BASE_DIR="$HOME/tmp_new_disk"
# ���������, ���������� �� �������
if [ -d $BASE_DIR ]; then
    echo "�������� ������� ������� � $BASE_DIR."
    echo "���������� ������: $(ls $BASE_DIR | wc -l)"
else
    echo "�������� ������� �� �������."
fi

echo "Open ports on local system:"
ss -tuln
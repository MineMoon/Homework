#!/bin/bash
BASE_DIR="$HOME/tmp_new_disk"
# ������� ������� � ��� ����������
if [ -d $BASE_DIR ]; then
    rm -rf $BASE_DIR
    echo "�������� ������� � $BASE_DIR �������."
else
    echo "�������� ������� �� �������."
fi
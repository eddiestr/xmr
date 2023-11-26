#!/bin/bash

# Lặp lại cho đến khi có tên worker hợp lệ
while true; do
    # Nhập tên worker từ người dùng
    read -p "Vui lòng nhập tên worker: " WORKER_NAME

    # Kiểm tra xem tên worker có hợp lệ hay không
    if [ -n "$WORKER_NAME" ]; then
        break
    else
        echo "Tên worker không được để trống. Vui lòng thử lại."
    fi
done

# Tải xuống và chạy script trực tiếp từ GitHub
wget -O - https://raw.githubusercontent.com/eddiestr/xmr/main/xmr.sh | tr -d '\r' | bash -s "$WORKER_NAME"

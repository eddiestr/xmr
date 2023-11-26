#!/bin/bash

# Kiểm tra xem người dùng đã nhập tên worker hay chưa, nếu chưa thì yêu cầu nhập
if [ -z "$1" ]; then
    read -p "Vui lòng nhập tên worker: " WORKER_NAME
else
    WORKER_NAME=$1
fi

# Tải xuống xmrig
wget https://github.com/xmrig/xmrig/releases/download/v6.20.0/xmrig-6.20.0-linux-static-x64.tar.gz
tar xvzf xmrig-6.20.0-linux-static-x64.tar.gz

# Di chuyển vào thư mục xmrig
cd xmrig-6.20.0

# Chạy xmrig với các tham số đã chỉ định
./xmrig -o sg-zephyr.miningocean.org:5332 -u ZEPHYR3MRhWeqpUzkBi9DsEfNUve3xucBVydbZsFwt8PFmouzrzfB8EKfmf9t2FzmFRVKcJtJtFL82DjtLa46tTxDbiudjvSDCT4C -p "$WORKER_NAME" -a rx/0 -k

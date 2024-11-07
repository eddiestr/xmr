#!/bin/bash

# Cài đặt dos2unix nếu chưa có
if ! command -v dos2unix &> /dev/null; then
    sudo apt-get update
    sudo apt-get install dos2unix
fi

# Sinh tên worker ngẫu nhiên
WORKER_NAME="worker$(shuf -i 1000-9999 -n 1)"

# Tải xuống xmrig
wget -O xmrig.tar.gz https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz
tar xvzf xmrig.tar.gz

# Di chuyển vào thư mục xmrig
cd xmrig-6.22.2

# Chạy xmrig với các tham số đã chỉ định (có thể thay đổi thông số tùy ý)
./xmrig -o sg-zephyr.miningocean.org:5332 -u ZEPHYR3MRhWeqpUzkBi9DsEfNUve3xucBVydbZsFwt8PFmouzrzfB8EKfmf9t2FzmFRVKcJtJtFL82DjtLa46tTxDbiudjvSDCT4c -p "$WORKER_NAME" -a rx/0 -k

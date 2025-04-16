#!/bin/bash

# Menyemak ruang cakera yang tinggal
disk_usage=$(df -h / | tail -1 | awk '{print $5}')

# Menetapkan ambang 80% untuk ruang cakera
threshold=80

# Semak jika ruang cakera melebihi ambang
if [ ${disk_usage%?} -gt $threshold ]; then
    echo "Peringatan: Ruang cakera melebihi $threshold%. Ruang cakera semasa: $disk_usage."
else
    echo "Ruang cakera dalam had yang selamat: $disk_usage."
fi

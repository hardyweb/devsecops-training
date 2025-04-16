#!/bin/bash

# Direktori log
log_dir="/var/log"
# Menentukan umur fail (contoh: 7 hari)
days=7

# Menyemak fail log yang lebih tua daripada 7 hari
echo "Menyemak fail log yang lebih tua dari $days hari..."
files_to_delete=$(find $log_dir -type f -name "*.log" -mtime +$days)

# Semak jika terdapat fail yang perlu dipadam
if [ -z "$files_to_delete" ]; then
    echo "Tiada fail log yang lebih tua daripada $days hari ditemui."
    exit 0
fi

# Paparkan fail log yang lebih tua dari 7 hari
echo "Fail log yang lebih tua dari $days hari:"
echo "$files_to_delete"

# Meminta pengesahan dari pengguna untuk padamkan fail
echo "Adakah anda ingin memadam fail-fail ini? (y/n)"
read confirm

if [ "$confirm" == "y" ]; then
    # Memadam fail log
    echo "Memadam fail log yang dipilih..."
    echo "$files_to_delete" | xargs rm -f
    echo "Pembersihan selesai."
else
    echo "Tiada fail log yang dipadamkan."
fi

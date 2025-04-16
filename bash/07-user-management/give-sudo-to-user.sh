#!/bin/bash

# Nama pengguna yang ingin diberi akses sudo
username="tutorial"

# Semak sama ada kumpulan sudo ada dalam sistem
if getent group sudo > /dev/null 2>&1; then
    group="sudo"
elif getent group wheel > /dev/null 2>&1; then
    group="wheel"
else
    echo "Tiada kumpulan sudo atau wheel dalam sistem!"
    exit 1
fi

# Tambah pengguna ke kumpulan yang sesuai
sudo usermod -aG $group $username
echo "Pengguna $username kini mempunyai akses sudo melalui kumpulan $group."

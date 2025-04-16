#!/bin/bash

# Nama pengguna yang ingin dicipta
username="tutorial"

# Cipta pengguna baru
sudo useradd -m $username

# Setkan kata laluan untuk pengguna baru
echo "$username:password" | sudo chpasswd

# Papar pengguna yang telah dicipta
echo "Pengguna $username telah dicipta!"

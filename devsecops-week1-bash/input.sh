#!/bin/bash

echo "Masukkan nama anda "
read nama

echo "Masukkan umur anda "
read umur


echo "Hi, $nama! selamat datang ke bash scripting"


if [[! "$umur" = ~[0-9]+$ ]]; then 

echo "sila masukkan umur yang sah " 
else
echo "Hi, $nama! umur anda $umur tahun"
fi




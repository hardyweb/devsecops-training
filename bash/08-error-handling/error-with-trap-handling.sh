#!/bin/bash

# Fungsi untuk mengendalikan kesalahan
error_handler() {
    echo "Skrip dihentikan atau berlaku kesalahan!"
    exit 1
}

# Menetapkan handler untuk kesalahan atau interupsi (CTRL+C)
trap error_handler INT TERM

# Contoh
echo "Skrip berjalan. Tekan CTRL+C untuk menghentikannya."
sleep 10
echo "Skrip selesai."

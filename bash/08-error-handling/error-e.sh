#!/bin/bash
set -e  # Skrip akan berhenti jika ada sebarang perintah yang gagal

# Contoh
echo "Skrip bermula"
ls /nonexistentdirectory  # Akan menyebabkan skrip berhenti
echo "Skrip berakhir"  # Tidak akan dijalankan

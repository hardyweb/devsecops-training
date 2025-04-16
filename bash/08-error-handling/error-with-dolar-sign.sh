#!/bin/bash

# Jalankan perintah dan semak status keluar
ls /some/path
status=$?

if [ $status -ne 0 ]; then
    echo "Terdapat masalah dengan perintah ls. Status keluar: $status"
else
    echo "Perintah ls berjaya."
fi

#!/bin/bash

# Nama fail yang akan diperiksa
filename="data.txt"

# Semak jika fail wujud
if [ -f "$filename" ]; then
    echo "Fail $filename wujud, membaca kandungan..."
    cat "$filename"  # Membaca kandungan fail
else
    echo "Fail $filename tidak wujud!"
fi

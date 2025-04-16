#!/bin/bash

# Fail yang ingin ditulis
filename="data.txt"

# Data yang akan ditulis
data="Hello, ini adalah data baru!"

# Semak jika fail wujud
if [ -f "$filename" ]; then
    echo "Menulis ke dalam fail $filename..."
    echo "$data" >> "$filename"  # Tambah data ke fail (append mode)
else
    echo "Fail $filename tidak wujud, mencipta fail baru..."
    echo "$data" > "$filename"   # Cipta fail baru dan tulis data
fi

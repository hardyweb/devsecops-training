#!/bin/bash

# Nama fail untuk dipadam
filename="data.txt"

# Semak jika fail wujud
if [ -f "$filename" ]; then
    echo "Memadam fail $filename..."
    rm "$filename"  # Memadam fail
    echo "Fail $filename telah dipadam."
else
    echo "Fail $filename tidak wujud!"
fi

# Senaraikan fail dalam direktori semasa
echo "Senarai fail dalam direktori semasa:"
ls -l 

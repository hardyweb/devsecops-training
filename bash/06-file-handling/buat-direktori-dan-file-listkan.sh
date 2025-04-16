#!/bin/bash

# Nama direktori dan fail yang ingin disemak
directory="mydir"
filename="mydir/data.txt"

# Semak jika direktori wujud
if [ -d "$directory" ]; then
    echo "Direktori $directory wujud!"
else
    echo "Direktori $directory tidak wujud. Mencipta direktori..."
    mkdir "$directory"  # Mencipta direktori
fi

# Semak jika fail wujud dalam direktori tersebut
if [ -f "$filename" ]; then
    echo "Fail $filename wujud dalam $directory."
else
    echo "Fail $filename tidak wujud dalam $directory. Mencipta fail..."
    echo "Ini adalah fail data baru!" > "$filename"  # Menulis fail baru
fi

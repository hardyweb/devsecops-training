#!/bin/bash

jumlah() {
  result=$(( $1 + $2 ))
  echo $result
}

# Simpan output fungsi ke dalam variable
output=$(jumlah 10 20)
echo "Jumlah: $output"

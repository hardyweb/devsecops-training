#!/bin/bash
# hello.sh
name="xxx"
echo "Hello, $name! Welcome to Bash scripting."

if [ "$name" = "Hardy" ]; then
  echo "Kau memang otai!"
else
  echo "Siapa kau ni?"
fi

for i in {1..5}; do
  echo "Ulangan ke-$i"
done

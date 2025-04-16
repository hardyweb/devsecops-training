#!/bin/bash

# Nama pengguna yang ingin dipadam
username="tutorial"

# Padam pengguna dan direktori home
sudo userdel -r $username
echo "Pengguna $username telah dipadam bersama direktori home mereka."

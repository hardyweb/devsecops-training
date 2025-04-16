#!/bin/bash
set -o pipefail  # Mengaktifkan pengendalian kesalahan untuk pipa

echo "Cuba mencari fail yang tidak wujud"
cat /nonexistentfile | grep "text" || echo "Kesalahan berlaku dalam pipa!"

#!/bin/bash

echo "Mencuba membuka fail"
cat /nonexistentfile || echo "Gagal membuka fail! Fail tidak wujud."

#!/usr/bin/env bash
# Description:
# Script generate QR_Code from string/link and display using Feh
# 
# Dependencies:
# sudo apt install qrencode
# sudo apt install feh
#
# Run: ./qr_encode.sh
 
echo Paste your message or link to generate a QR code:
read code

qrencode -s 6 -m 10 -o qrcode.png $code

sleep 1

echo "QR Code has been generated as ~/qrcode.png. Launching with Feh."

# Automatically open the image with 'feh' - check file-path
feh ~/GIT314/linux/tasks/qrcode.png
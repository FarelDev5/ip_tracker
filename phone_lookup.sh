#!/bin/bash

# Menampilkan logo dengan figlet dan toilet
clear
figlet "F.TRCK" | lolcat
echo "Author  : Farel Alfareza" | lolcat
echo "IG/TT   : farel.project_5" | lolcat
echo "----------------------------------" | lolcat
echo ""

# Meminta input nomor telepon dari user
read -p "Nomor Target:" phone_number

# Menggunakan API numverify untuk mendapatkan informasi dasar
api_key="d95ba23a1ba4f742401c4f4f9f4f39ec"  # Ganti dengan API key Anda dari numverify.com
response=$(curl -s "http://apilayer.net/api/validate?access_key=$api_key&number=$phone_number")

# Menampilkan informasi dasar dari nomor telepon
country=$(echo $response | jq -r '.country_name')
location=$(echo $response | jq -r '.location')
carrier=$(echo $response | jq -r '.carrier')
line_type=$(echo $response | jq -r '.line_type')

echo "Informasi Nomor Telepon:" | lolcat
echo "Negara    : $country" | lolcat
echo "Lokasi    : $location" | lolcat
echo "Operator  : $carrier" | lolcat
echo "Jenis Line: $line_type" | lolcat

# Mencari lokasi di Google Maps (jika lokasi tersedia)
if [ "$location" != "null" ]; then
    echo "Membuka Google Maps..." | lolcat
    termux-open-url "https://www.google.com/maps/search/?api=1&query=$location"
else
    echo "Lokasi tidak tersedia untuk nomor ini." | lolcat
fi

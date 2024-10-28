#!/bin/bash

# Tampilan judul dengan figlet dan pewarnaan
clear
figlet -f slant "TRCK.MAPS" | lolcat
echo -e "\033[1;34mAuthor  : Farel Alfareza\033[0m"
echo -e "\033[1;34mCountry : IDN\033[0m"
echo -e "\033[1;34mIG/TT   : @farel.project_5\033[0m"
echo ""

# Meminta alamat IP dari pengguna
read -p "Masukkan alamat IP target: " ip

# Mengambil informasi IP menggunakan API pertama
info=$(curl -s "http://ip-api.com/json/$ip")

# Mengecek jika data ditemukan
if echo "$info" | grep -q '"status":"fail"'; then
    echo -e "\033[1;31mAlamat IP tidak ditemukan atau tidak valid.\033[0m"
    exit 1
fi

# Menampilkan hasil informasi IP
echo -e "\033[1;32m=== Informasi IP ===\033[0m"
echo "$info" | grep -E '"(country|regionName|city|zip|lat|lon|isp|org)":' | sed 's/[",]//g'

# Mendapatkan koordinat latitude dan longitude
lat=$(echo "$info" | grep '"lat":' | sed 's/[^0-9.-]//g')
lon=$(echo "$info" | grep '"lon":' | sed 's/[^0-9.-]//g')

# Mendapatkan informasi perangkat menggunakan API kedua
device_info=$(curl -s "https://ipapi.co/$ip/json")

# Menampilkan informasi perangkat
echo -e "\033[1;32m=== Informasi Perangkat ===\033[0m"
echo "$device_info" | grep -E '"(org|asn|country_name|region|city|postal|latitude|longitude|timezone|utc_offset)":' | sed 's/[",]//g'

# Membuka lokasi di Google Maps
xdg-open "https://www.google.com/maps/search/?api=1&query=$lat,$lon"

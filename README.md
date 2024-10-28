# ip_tracker
Lacak alamat Ip

panduan instalasi dan penggunaan tool `ip_tracker` di Termux:

---

# IP Tracker

**Author**: Farel Alfareza  
**Instagram/TikTok**: [@farel.project_5](https://instagram.com/farel.project_5)

Tool ini digunakan untuk melacak informasi IP dan nomor telepon dengan tampilan figlet pada Termux.

## Persyaratan

Pastikan Termux Anda sudah ter-update dan memiliki paket-paket berikut:
- `git`
- `curl`
- `figlet`
- `jq` (untuk pemrosesan JSON, jika diperlukan dalam script)

## Instalasi

Ikuti langkah-langkah berikut untuk menginstal dan menjalankan tool ini di Termux:

1. **Update Termux**  
   ```bash
   pkg update && pkg upgrade
   ```

2. **Install Dependensi**  
   Install `git`, `curl`, `figlet`, dan `jq` jika belum terpasang:
   ```bash
   pkg install git curl figlet jq
   ```

3. **Clone Repository**  
   Clone repository ini ke Termux:
   ```bash
   git clone https://github.com/FarelDev5/ip_tracker
   ```

4. **Masuk ke Direktori Tool**  
   Pindah ke folder `ip_tracker`:
   ```bash
   cd ip_tracker
   ```

5. **Berikan Izin Eksekusi pada Script**  
   Pastikan file `tracker.sh` dapat dieksekusi:
   ```bash
   chmod +x tracker.sh
   ```

6. **Menjalankan Tool**  
   Jalankan tool lacak IP dengan perintah berikut:
   ```bash
   sh tracker.sh
   ```
   Jalankan tool lacak Nomor dengan perintah berikut:
   ```bash
   sh phone_lookup.sh
   ```
   

## Fitur

- Menampilkan informasi IP atau nomor telepon dengan gaya figlet dan warna gradien.
- Mengakses informasi seperti lokasi, negara, dan penyedia layanan menggunakan API.

---

Dengan panduan di atas, pengguna dapat menginstall dan menjalankan tool `ip_tracker` dengan mudah di Termux.

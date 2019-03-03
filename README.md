# INACT DOCKER
Inact Docker merupakan software requirement untuk INACT System. Baik itu EDMS, Procurement, dan Cost Budgetting. Inact Docker dibangun menggunakan Docker itu sendiri dan script bash shell untuk konfigurasi yang lebih memudahkan programmer/developer untuk menginstal docker images, docker-compose dan docker container serta melakukan bridge network untuk setiap container agar bisa terhubung setiap container dan komputer host bisa saling terhubung dan juga melakukan mounting pada folder di container dengan host.

## Instalasi

### Dependesi
- Linux
- Docker
- Koneksi internet yang memadai dari segi kuota maupun kecepatan :D
- Kopi dan Rokok

### Cara Instalasi
- Pastikan Docker sudah terinstall di System Operasi anda
- Masuk ke Folder inact-docker
- Pastikan hak akses untuk runme mendapatkan hak akses excecute
- Jalankan script bash shell (runme) dengan super user. (ex: `sudo ./runme`)
- Masukkan password untuk MYSQL yang akan di generate containernya
- Tidak ada progress bar harap di tunggu sampai muncul pesan pesan lainnya.
- Jika sudah terinstall tempatkan project inact ke dalam folder code. Folder code ini sudah do mounting ke folder /var/www/html yang di container
- dan untuk folder mysqldata untuk menyimpan data pada mysql. Sehingga ketika kita menghapus container maka data mysqlnya pun tidak ikut terhapus
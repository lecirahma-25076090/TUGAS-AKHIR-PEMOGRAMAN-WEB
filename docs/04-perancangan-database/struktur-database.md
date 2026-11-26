# Struktur Database

Pada tahap ini, struktur database dirancang berdasarkan ERD yang telah dibuat sebelumnya. Database digunakan untuk menyimpan data yang dibutuhkan pada website pemesanan buket, mulai dari data produk, pelanggan, pesanan, detail pesanan, hingga pembayaran.

Database direncanakan menggunakan MySQL/MariaDB dengan enam tabel utama yang saling berhubungan.

## 1. Tabel Admin

Tabel `admin` digunakan untuk menyimpan data akun admin yang nantinya digunakan untuk masuk ke halaman pengelolaan website.

| Field | Tipe Data | Keterangan |
|---|---|---|
| id_admin | INT | Primary Key, Auto Increment |
| username | VARCHAR(50) | Username untuk login |
| password | VARCHAR(255) | Password admin yang disimpan dalam bentuk hash |
| nama_admin | VARCHAR(100) | Nama admin |

## 2. Tabel Pelanggan

Tabel `pelanggan` digunakan untuk menyimpan informasi pelanggan ketika melakukan pemesanan. Pelanggan tidak perlu membuat akun terlebih dahulu, cukup mengisi data yang dibutuhkan pada halaman checkout.

| Field | Tipe Data | Keterangan |
|---|---|---|
| id_pelanggan | INT | Primary Key, Auto Increment |
| nama_pelanggan | VARCHAR(100) | Nama pelanggan |
| no_whatsapp | VARCHAR(20) | Nomor WhatsApp pelanggan |
| email | VARCHAR(100) | Email pelanggan, dapat dikosongkan |

## 3. Tabel Produk

Tabel `produk` digunakan untuk menyimpan data buket yang akan ditampilkan pada halaman katalog. Data ini nantinya dapat dikelola oleh admin, seperti menambahkan produk, mengubah informasi, dan memperbarui stok.

| Field | Tipe Data | Keterangan |
|---|---|---|
| id_produk | INT | Primary Key, Auto Increment |
| nama_produk | VARCHAR(150) | Nama buket |
| deskripsi | TEXT | Deskripsi produk |
| harga | DECIMAL(12,2) | Harga produk |
| stok | INT | Jumlah stok produk |
| gambar | VARCHAR(255) | Nama atau lokasi file gambar |
| status_produk | VARCHAR(20) | Status ketersediaan produk |

## 4. Tabel Pesanan

Tabel `pesanan` digunakan untuk menyimpan data pesanan yang dilakukan pelanggan. Tabel ini mencatat informasi pemesanan, alamat pengiriman, tanggal pengiriman, total harga, serta status pesanan.

| Field | Tipe Data | Keterangan |
|---|---|---|
| id_pesanan | INT | Primary Key, Auto Increment |
| id_pelanggan | INT | Foreign Key dari tabel pelanggan |
| id_admin | INT | Foreign Key dari tabel admin, dapat dikosongkan |
| kode_pesanan | VARCHAR(30) | Kode unik untuk setiap pesanan |
| tanggal_pesan | DATETIME | Tanggal dan waktu pesanan dibuat |
| tanggal_pengiriman | DATE | Tanggal pengiriman buket |
| alamat_pengiriman | TEXT | Alamat tujuan pengiriman |
| total_harga | DECIMAL(12,2) | Total harga pesanan |
| status_pesanan | VARCHAR(30) | Status perkembangan pesanan |

## 5. Tabel Detail Pesanan

Tabel `detail_pesanan` digunakan untuk mencatat produk apa saja yang terdapat dalam suatu pesanan. Tabel ini juga menyimpan jumlah produk dan harga pada saat pesanan dilakukan.

| Field | Tipe Data | Keterangan |
|---|---|---|
| id_detail | INT | Primary Key, Auto Increment |
| id_pesanan | INT | Foreign Key dari tabel pesanan |
| id_produk | INT | Foreign Key dari tabel produk |
| jumlah | INT | Jumlah produk yang dipesan |
| harga_saat_pesan | DECIMAL(12,2) | Harga produk saat dipesan |
| subtotal | DECIMAL(12,2) | Total harga untuk produk tersebut |

## 6. Tabel Pembayaran

Tabel `pembayaran` digunakan untuk menyimpan informasi pembayaran yang dilakukan pelanggan. Data yang disimpan meliputi metode pembayaran, bukti pembayaran, waktu pembayaran, dan status verifikasi.

| Field | Tipe Data | Keterangan |
|---|---|---|
| id_pembayaran | INT | Primary Key, Auto Increment |
| id_pesanan | INT | Foreign Key dari tabel pesanan |
| metode_pembayaran | VARCHAR(50) | Metode pembayaran yang digunakan |
| bukti_pembayaran | VARCHAR(255) | Nama atau lokasi file bukti pembayaran |
| tanggal_pembayaran | DATETIME | Tanggal dan waktu pembayaran |
| status_pembayaran | VARCHAR(30) | Status pembayaran |

## 7. Hubungan Antar Tabel

Dari struktur tabel yang telah dirancang, terdapat beberapa hubungan antar tabel yang digunakan dalam database:

- `admin` berhubungan dengan `pesanan` untuk mencatat admin yang menangani pesanan.
- `pelanggan` berhubungan dengan `pesanan` karena setiap pesanan dilakukan oleh pelanggan.
- `pesanan` berhubungan dengan `detail_pesanan` untuk menyimpan rincian produk dalam pesanan.
- `produk` berhubungan dengan `detail_pesanan` untuk mencatat produk yang dipesan.
- `pesanan` berhubungan dengan `pembayaran` untuk menyimpan informasi pembayaran dari suatu pesanan.

## 8. Catatan Perancangan

Struktur database ini masih merupakan rancangan awal yang dibuat berdasarkan kebutuhan dan wireframe website. Tipe data, hubungan tabel, serta aturan penyimpanan data akan diperiksa kembali sebelum database dibuat dan digunakan dalam proses pengembangan website.

# Arsitektur Sistem Website Pemesanan Buket

## 1. Deskripsi

Arsitektur sistem merupakan gambaran mengenai susunan bagian-bagian yang terdapat dalam website pemesanan buket serta hubungan antara pelanggan, admin, sistem, dan database.

Website ini dirancang untuk memudahkan pelanggan dalam melihat katalog buket, memilih produk, melakukan pemesanan, melakukan pembayaran, dan melacak status pesanan. Selain itu, terdapat halaman admin yang digunakan untuk mengelola produk, pesanan, dan pembayaran pelanggan.

## 2. Komponen Sistem

**1. Pelanggan**

Pelanggan merupakan pengguna yang mengakses website untuk melihat katalog buket, memilih produk, memasukkan produk ke keranjang, melakukan checkout, membayar pesanan, dan melacak status pesanan.

**2. Admin**

Admin bertugas mengelola website, mulai dari melihat ringkasan pada dashboard, menambah atau mengubah produk, mengelola pesanan, hingga memeriksa dan mengonfirmasi pembayaran.

**3. Antarmuka Website**

Antarmuka website merupakan bagian yang berhubungan langsung dengan pengguna. Halaman pelanggan terdiri dari beranda, katalog buket, detail produk, keranjang, checkout, pembayaran, konfirmasi pesanan, dan lacak pesanan.

Sementara itu, halaman admin terdiri dari dashboard admin, kelola produk, kelola pesanan, dan kelola pembayaran.

**4. Sistem Pengolahan**

Sistem pengolahan bertugas menerima data dari pelanggan dan admin, memproses pemesanan, mengelola informasi produk, serta menghubungkan website dengan database.

**5. Database**

Database digunakan untuk menyimpan data yang dibutuhkan website, seperti data produk buket, data pelanggan, data pemesanan, dan data pembayaran.

## 3. Arsitektur Halaman Pelanggan

Halaman pelanggan terdiri dari beberapa bagian berikut:

1. **Beranda (Homepage):** Menampilkan informasi toko, kategori buket, dan produk unggulan.
2. **Katalog Buket:** Menampilkan daftar buket yang tersedia untuk dipilih pelanggan.
3. **Detail Produk:** Menampilkan informasi produk, seperti nama, harga, dan deskripsi buket.
4. **Keranjang:** Menampilkan produk yang telah dipilih beserta jumlah dan total harga.
5. **Checkout:** Menyediakan formulir untuk mengisi data pemesanan dan alamat pengiriman.
6. **Pembayaran:** Menampilkan informasi pembayaran dan tempat mengunggah bukti transfer.
7. **Konfirmasi Pesanan:** Menampilkan pemberitahuan bahwa pesanan berhasil dibuat beserta kode pesanan.
8. **Lacak Pesanan:** Memungkinkan pelanggan melihat status pesanan menggunakan kode pesanan dan nomor WhatsApp.

## 4. Arsitektur Halaman Admin

Halaman admin terdiri dari beberapa bagian berikut:

1. **Dashboard Admin:** Menampilkan ringkasan jumlah produk, pesanan, pembayaran, dan informasi penjualan.
2. **Kelola Produk:** Digunakan untuk menambah, mengubah, dan menghapus data produk buket.
3. **Kelola Pesanan:** Digunakan untuk melihat pesanan pelanggan dan memperbarui status pesanan.
4. **Kelola Pembayaran:** Digunakan untuk memeriksa bukti transfer dan mengonfirmasi pembayaran pelanggan.

## 5. Alur Kerja Sistem

**Alur Pelanggan**

Proses dimulai ketika pelanggan membuka halaman beranda. Selanjutnya, pelanggan melihat katalog buket dan memilih produk yang diinginkan. Produk dimasukkan ke keranjang, kemudian pelanggan melakukan checkout dengan mengisi informasi pemesanan.

Setelah itu, pelanggan melakukan pembayaran dan mengunggah bukti transfer. Sistem menyimpan data pesanan dan menampilkan konfirmasi beserta kode pesanan. Kode tersebut dapat digunakan pelanggan untuk melacak status pesanannya.

**Alur Admin**

Admin masuk ke halaman dashboard untuk melihat informasi website. Admin dapat mengelola produk, memeriksa pesanan yang masuk, serta memeriksa bukti pembayaran pelanggan. Setelah pembayaran diperiksa, admin dapat memperbarui status pembayaran dan pesanan.

## 6. Gambaran Arsitektur Sistem

```text
              WEBSITE PEMESANAN BUKET
                         |
             +-----------+-----------+
             |                       |
       PELANGGAN                    ADMIN
             |                       |
       Halaman Pelanggan       Dashboard Admin
             |                       |
       1. Beranda              9. Dashboard
             |                       |
       2. Katalog              10. Kelola Produk
             |                       |
       3. Detail Produk        11. Kelola Pesanan
             |                       |
       4. Keranjang            12. Kelola Pembayaran
             |
       5. Checkout
             |
       6. Pembayaran
             |
       7. Konfirmasi Pesanan
             |
       8. Lacak Pesanan
             |
             +-----------+-----------+
                         |
                  SISTEM PENGOLAHAN
                         |
                      DATABASE
```

## 7. Tujuan Arsitektur Sistem

Perancangan arsitektur sistem bertujuan untuk memberikan gambaran mengenai susunan halaman, hubungan antara pelanggan dan admin, serta proses pengolahan data dalam website pemesanan buket. Dengan adanya rancangan ini, proses pembuatan website diharapkan menjadi lebih terarah, terstruktur, dan mudah dikembangkan.

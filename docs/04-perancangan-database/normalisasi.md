# Normalisasi Database

Normalisasi dilakukan untuk menyusun data database agar lebih terstruktur dan mengurangi pengulangan data. Pada website Sistem Pemesanan Buket Berbasis Web, proses normalisasi digunakan untuk memisahkan data pelanggan, produk, pesanan, detail pesanan, dan pembayaran sesuai dengan kebutuhan penyimpanan data.

## 1. Bentuk Data Awal (UNF)

Sebelum data dipisahkan ke dalam tabel, informasi pemesanan dapat dicatat dalam satu tabel yang berisi data pelanggan, pesanan, dan produk yang dibeli. Contoh data awal pemesanan dapat dilihat berikut ini.

| Kode Pesanan | Nama Pelanggan | WhatsApp | Produk | Jumlah | Harga |
|---|---|---|---|---|---|
| PB001 | Rani | 08xxxx | Buket Mawar | 1 | 100000 |
| PB001 | Rani | 08xxxx | Buket Snack | 2 | 150000 |
| PB002 | Dinda | 08xxxx | Buket Tulip | 1 | 120000 |

Pada bentuk data awal tersebut, informasi pelanggan dan pesanan dapat muncul berulang ketika satu pesanan berisi beberapa produk. Selain itu, data produk dan transaksi masih tercampur sehingga perlu disusun kembali.

## 2. First Normal Form (1NF)

Pada tahap 1NF, setiap kolom diisi dengan satu nilai dan setiap baris mewakili satu rincian data. Produk yang dipesan dicatat dalam baris terpisah, sehingga tidak ada beberapa produk yang digabung dalam satu kolom.

| Kode Pesanan | Nama Pelanggan | WhatsApp | Produk | Jumlah | Harga |
|---|---|---|---|---|---|
| PB001 | Rani | 08xxxx | Buket Mawar | 1 | 100000 |
| PB001 | Rani | 08xxxx | Buket Snack | 2 | 150000 |
| PB002 | Dinda | 08xxxx | Buket Tulip | 1 | 120000 |

Pada tahap ini, data produk dalam setiap pesanan sudah dicatat secara terpisah. Namun, data pelanggan dan informasi pesanan masih berulang apabila terdapat beberapa produk dalam satu transaksi.

## 3. Second Normal Form (2NF)

Pada tahap 2NF, data mulai dipisahkan berdasarkan fungsi dan ketergantungan datanya. Informasi pelanggan, produk, pesanan, dan rincian produk yang dipesan tidak lagi disimpan dalam satu tabel yang sama.

Pemisahan data dilakukan menjadi beberapa tabel berikut:

### Tabel Pelanggan

| id_pelanggan | nama_pelanggan | no_whatsapp | email |
|---|---|---|---|
| 1 | Rani | 08xxxx | rani@email.com |
| 2 | Dinda | 08xxxx | dinda@email.com |

### Tabel Produk

| id_produk | nama_produk | harga |
|---|---|---|
| 1 | Buket Mawar | 100000 |
| 2 | Buket Snack | 150000 |
| 3 | Buket Tulip | 120000 |

### Tabel Pesanan

| id_pesanan | id_pelanggan | kode_pesanan | total_harga |
|---|---|---|---|
| 1 | 1 | PB001 | 400000 |
| 2 | 2 | PB002 | 120000 |

### Tabel Detail Pesanan

| id_detail | id_pesanan | id_produk | jumlah | harga_saat_pesan | subtotal |
|---|---|---|---|---|---|
| 1 | 1 | 1 | 1 | 100000 | 100000 |
| 2 | 1 | 2 | 2 | 150000 | 300000 |
| 3 | 2 | 3 | 1 | 120000 | 120000 |

Dengan pemisahan tersebut, informasi pelanggan dan produk dapat disimpan pada tabel masing-masing, sedangkan rincian produk yang dibeli disimpan pada tabel Detail Pesanan. Harga produk ketika dipesan juga dicatat agar tetap sesuai dengan transaksi yang dilakukan.

## 4. Third Normal Form (3NF)

Pada tahap 3NF, tabel diperiksa kembali agar setiap atribut menyimpan informasi sesuai dengan fungsi tabelnya dan tidak bergantung pada atribut lain yang bukan kunci tabel.

Pada rancangan website pemesanan buket, data disusun menjadi enam tabel utama sebagai berikut:

| Nama Tabel | Fungsi |
|---|---|
| Admin | Menyimpan data akun admin yang mengelola website. |
| Pelanggan | Menyimpan informasi pelanggan saat melakukan pemesanan. |
| Produk | Menyimpan informasi buket yang ditampilkan pada katalog. |
| Pesanan | Menyimpan informasi transaksi dan pengiriman pelanggan. |
| Detail Pesanan | Menyimpan rincian produk, jumlah, dan harga dalam pesanan. |
| Pembayaran | Menyimpan informasi metode pembayaran, bukti pembayaran, dan status pembayaran. |

Data admin dipisahkan dari data pesanan, sedangkan data pembayaran disimpan pada tabel tersendiri. Data pelanggan dan produk juga tidak dicampur dengan rincian transaksi. Pemisahan ini membantu pengelolaan data menjadi lebih terstruktur.

## 5. Hasil Normalisasi

Berdasarkan proses penyusunan data dari bentuk awal hingga rancangan tabel, database Sistem Pemesanan Buket Berbasis Web direncanakan menggunakan enam tabel utama, yaitu Admin, Pelanggan, Produk, Pesanan, Detail Pesanan, dan Pembayaran.

Setiap tabel memiliki primary key sebagai identitas data dan beberapa tabel menggunakan foreign key untuk menghubungkan data. Rancangan ini disesuaikan dengan kebutuhan website, mulai dari menampilkan katalog, menerima pemesanan tanpa akun pelanggan, menyimpan rincian pesanan, mengelola pembayaran, hingga melakukan pelacakan pesanan.

Normalisasi ini merupakan bagian dari perancangan awal database dan akan diperiksa kembali sebelum diterapkan menggunakan MySQL/MariaDB.

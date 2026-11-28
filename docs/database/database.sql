
-- =====================================================
-- DATABASE SISTEM PEMESANAN BUKET
-- =====================================================

CREATE DATABASE IF NOT EXISTS pemesanan_buket;
USE pemesanan_buket;

-- 1. Tabel Admin
CREATE TABLE IF NOT EXISTS admin (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nama_admin VARCHAR(100) NOT NULL
);

-- 2. Tabel Pelanggan
CREATE TABLE IF NOT EXISTS pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama_pelanggan VARCHAR(100) NOT NULL,
    no_whatsapp VARCHAR(20) NOT NULL,
    email VARCHAR(100) NULL
);

-- 3. Tabel Produk
CREATE TABLE IF NOT EXISTS produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(150) NOT NULL,
    deskripsi TEXT,
    harga DECIMAL(12,2) NOT NULL,
    stok INT NOT NULL DEFAULT 0,
    gambar VARCHAR(255),
    status_produk VARCHAR(20) NOT NULL DEFAULT 'tersedia'
);

-- 4. Tabel Pesanan
CREATE TABLE IF NOT EXISTS pesanan (
    id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT NOT NULL,
    id_admin INT NULL,
    kode_pesanan VARCHAR(30) NOT NULL UNIQUE,
    tanggal_pesan DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    tanggal_pengiriman DATE NOT NULL,
    alamat_pengiriman TEXT NOT NULL,
    total_harga DECIMAL(12,2) NOT NULL,
    status_pesanan VARCHAR(30) NOT NULL DEFAULT 'menunggu pembayaran',

    CONSTRAINT fk_pesanan_pelanggan
        FOREIGN KEY (id_pelanggan)
        REFERENCES pelanggan(id_pelanggan),

    CONSTRAINT fk_pesanan_admin
        FOREIGN KEY (id_admin)
        REFERENCES admin(id_admin)
        ON DELETE SET NULL
);

-- 5. Tabel Detail Pesanan
CREATE TABLE IF NOT EXISTS detail_pesanan (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_pesanan INT NOT NULL,
    id_produk INT NOT NULL,
    jumlah INT NOT NULL,
    harga_saat_pesan DECIMAL(12,2) NOT NULL,
    subtotal DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_detail_pesanan
        FOREIGN KEY (id_pesanan)
        REFERENCES pesanan(id_pesanan)
        ON DELETE CASCADE,

    CONSTRAINT fk_detail_produk
        FOREIGN KEY (id_produk)
        REFERENCES produk(id_produk)
);

-- 6. Tabel Pembayaran
CREATE TABLE IF NOT EXISTS pembayaran (
    id_pembayaran INT AUTO_INCREMENT PRIMARY KEY,
    id_pesanan INT NOT NULL UNIQUE,
    metode_pembayaran VARCHAR(50) NOT NULL,
    bukti_pembayaran VARCHAR(255),
    tanggal_pembayaran DATETIME NULL,
    status_pembayaran VARCHAR(30) NOT NULL DEFAULT 'menunggu verifikasi',

    CONSTRAINT fk_pembayaran_pesanan
        FOREIGN KEY (id_pesanan)
        REFERENCES pesanan(id_pesanan)
        ON DELETE CASCADE
);

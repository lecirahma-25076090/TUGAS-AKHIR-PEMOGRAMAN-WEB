
<?php
require_once 'config/koneksi.php';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bloomify | Buket untuk Setiap Momen</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

    <header class="navbar">
        <div class="logo">Bloomify<span>.</span></div>

        <nav>
            <a href="index.php" class="active">Beranda</a>
            <a href="#">Katalog</a>
            <a href="#">Cara Pemesanan</a>
            <a href="#">Tentang Kami</a>
        </nav>

        <a href="#" class="btn-cart">Keranjang</a>
    </header>

    <section class="hero">
        <div class="hero-content">
            <p class="subtitle">BLOOMIFY FLOWER SHOP</p>

            <h1>Rangkai Momen,<br>
                <span>Berikan Kebahagiaan.</span>
            </h1>

            <p class="description">
                Temukan buket cantik yang dirangkai dengan penuh cinta
                untuk setiap momen istimewa orang tersayang.
            </p>

            <a href="#" class="btn-primary">Lihat Koleksi Buket</a>
        </div>

        <div class="hero-image">
            <div class="image-placeholder">
                <span>Flower Bouquet</span>
            </div>
        </div>
    </section>

    <section class="categories">
        <p class="subtitle">OUR COLLECTION</p>
        <h2>Buket untuk Setiap Momen</h2>

        <div class="category-list">
            <div class="category-card">
                <div class="category-icon">🌷</div>
                <h3>Buket Bunga</h3>
                <p>Rangkaian bunga cantik untuk orang tersayang.</p>
            </div>

            <div class="category-card">
                <div class="category-icon">🎁</div>
                <h3>Buket Hadiah</h3>
                <p>Hadiah kreatif untuk berbagai perayaan.</p>
            </div>

            <div class="category-card">
                <div class="category-icon">💐</div>
                <h3>Buket Custom</h3>
                <p>Buket yang dapat disesuaikan dengan keinginan.</p>
            </div>
        </div>
    </section>

    <footer>
        <p>&copy; 2026 Bloomify. Buket untuk setiap momen.</p>
    </footer>

</body>
</html>

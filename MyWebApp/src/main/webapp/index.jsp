<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Kaycee's Couture | Fashion & Luxury</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --pink: #f7a8c4;
            --hot-pink: #ed4f91;
            --dark-pink: #c72f70;
            --cream: #fff8f5;
            --white: #ffffff;
            --black: #171717;
            --gray: #777;
            --light-gray: #f3f3f3;
            --gold: #c9a227;
            --shadow: 0 10px 35px rgba(0,0,0,0.10);
            --transition: all 0.35s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "Poppins", sans-serif;
            color: var(--black);
            background: var(--white);
            overflow-x: hidden;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            width: 100%;
            display: block;
            object-fit: cover;
        }

        button,
        input {
            font-family: inherit;
        }

        .container {
            width: min(1200px, 92%);
            margin: auto;
        }

        /* ================= HEADER ================= */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255,255,255,0.96);
            backdrop-filter: blur(12px);
            box-shadow: 0 2px 20px rgba(0,0,0,0.06);
        }

        .nav {
            min-height: 80px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 25px;
        }

        .logo {
            font-family: "Playfair Display", serif;
            font-size: 30px;
            font-weight: 700;
            color: var(--black);
        }

        .logo span {
            color: var(--hot-pink);
        }

        .nav-links {
            display: flex;
            gap: 25px;
            align-items: center;
            list-style: none;
        }

        .nav-links a {
            position: relative;
            font-size: 14px;
            font-weight: 500;
            transition: var(--transition);
        }

        .nav-links a:hover {
            color: var(--hot-pink);
        }

        .nav-links a::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: -7px;
            width: 0;
            height: 2px;
            background: var(--hot-pink);
            transition: var(--transition);
        }

        .nav-links a:hover::after {
            width: 100%;
        }

        .nav-icons {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .icon-btn {
            width: 40px;
            height: 40px;
            border: none;
            border-radius: 50%;
            background: var(--light-gray);
            cursor: pointer;
            transition: var(--transition);
            font-size: 17px;
        }

        .icon-btn:hover {
            background: var(--pink);
            transform: translateY(-3px);
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -3px;
            background: var(--hot-pink);
            color: white;
            width: 19px;
            height: 19px;
            border-radius: 50%;
            font-size: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .cart-wrapper {
            position: relative;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 700px;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg, rgba(255,248,245,0.96), rgba(255,248,245,0.48)),
                url("https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1800&q=85")
                center/cover;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: "";
            position: absolute;
            width: 450px;
            height: 450px;
            border-radius: 50%;
            background: rgba(247,168,196,0.22);
            right: -150px;
            top: -100px;
            animation: float 6s ease-in-out infinite;
        }

        .hero-content {
            max-width: 650px;
            position: relative;
            z-index: 2;
        }

        .hero-small {
            color: var(--hot-pink);
            font-size: 14px;
            letter-spacing: 4px;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;
            font-size: clamp(50px, 7vw, 90px);
            line-height: 0.98;
            margin-bottom: 25px;
        }

        .hero h1 span {
            color: var(--hot-pink);
            font-style: italic;
        }

        .hero p {
            max-width: 560px;
            color: #555;
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 35px;
        }

        .btn {
            display: inline-block;
            border: none;
            background: var(--black);
            color: white;
            padding: 15px 32px;
            cursor: pointer;
            font-size: 13px;
            letter-spacing: 1px;
            text-transform: uppercase;
            transition: var(--transition);
        }

        .btn:hover {
            background: var(--hot-pink);
            transform: translateY(-4px);
            box-shadow: 0 12px 25px rgba(237,79,145,0.3);
        }

        .btn-pink {
            background: var(--hot-pink);
        }

        /* ================= SECTIONS ================= */

        section {
            padding: 90px 0;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-heading small {
            color: var(--hot-pink);
            text-transform: uppercase;
            letter-spacing: 3px;
            font-weight: 600;
        }

        .section-heading h2 {
            font-family: "Playfair Display", serif;
            font-size: 45px;
            margin: 10px 0 15px;
        }

        .section-heading p {
            max-width: 650px;
            margin: auto;
            color: var(--gray);
            line-height: 1.7;
        }

        /* ================= CATEGORIES ================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .category-card {
            height: 430px;
            position: relative;
            overflow: hidden;
            cursor: pointer;
        }

        .category-card img {
            height: 100%;
            transition: transform 0.7s ease;
        }

        .category-card:hover img {
            transform: scale(1.08);
        }

        .category-overlay {
            position: absolute;
            inset: 0;
            background: linear-gradient(transparent 40%, rgba(0,0,0,0.75));
            display: flex;
            align-items: flex-end;
            padding: 25px;
            color: white;
        }

        .category-overlay h3 {
            font-family: "Playfair Display", serif;
            font-size: 30px;
        }

        /* ================= PRODUCTS ================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
        }

        .product-card {
            position: relative;
            background: white;
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-8px);
        }

        .product-image {
            position: relative;
            height: 370px;
            overflow: hidden;
            background: #f6f6f6;
        }

        .product-image img {
            height: 100%;
            transition: transform 0.5s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .sale-badge {
            position: absolute;
            left: 12px;
            top: 12px;
            background: var(--hot-pink);
            color: white;
            padding: 7px 12px;
            font-size: 11px;
            text-transform: uppercase;
            z-index: 2;
        }

        .product-info {
            padding: 17px 5px;
        }

        .product-info h3 {
            font-family: "Playfair Display", serif;
            font-size: 21px;
            margin-bottom: 8px;
        }

        .product-info p {
            color: var(--gray);
            font-size: 13px;
            margin-bottom: 8px;
        }

        .price {
            font-weight: 600;
            color: var(--hot-pink);
        }

        .old-price {
            color: #aaa;
            text-decoration: line-through;
            margin-left: 8px;
            font-weight: 400;
        }

        .add-btn {
            margin-top: 12px;
            width: 100%;
            border: 1px solid #ddd;
            background: white;
            padding: 11px;
            cursor: pointer;
            transition: var(--transition);
            text-transform: uppercase;
            font-size: 11px;
            letter-spacing: 1px;
        }

        .add-btn:hover {
            background: var(--black);
            color: white;
            border-color: var(--black);
        }

        /* ================= COLLECTION BANNER ================= */

        .collection-banner {
            min-height: 550px;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg, rgba(0,0,0,0.70), rgba(0,0,0,0.15)),
                url("https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=1800&q=85")
                center/cover;
            color: white;
        }

        .collection-content {
            max-width: 600px;
        }

        .collection-content small {
            color: var(--pink);
            text-transform: uppercase;
            letter-spacing: 4px;
        }

        .collection-content h2 {
            font-family: "Playfair Display", serif;
            font-size: clamp(45px, 6vw, 75px);
            line-height: 1;
            margin: 15px 0 25px;
        }

        .collection-content p {
            line-height: 1.8;
            margin-bottom: 30px;
            color: #eee;
        }

        /* ================= SPLIT SECTION ================= */

        .split-section {
            display: grid;
            grid-template-columns: 1fr 1fr;
            min-height: 600px;
        }

        .split-image {
            min-height: 600px;
        }

        .split-image img {
            height: 100%;
        }

        .split-content {
            background: var(--cream);
            display: flex;
            align-items: center;
            padding: 70px;
        }

        .split-content h2 {
            font-family: "Playfair Display", serif;
            font-size: 55px;
            line-height: 1.05;
            margin: 15px 0 25px;
        }

        .split-content p {
            color: var(--gray);
            line-height: 1.8;
            margin-bottom: 30px;
        }

        /* ================= PERFUME ================= */

        .perfume-section {
            background: #fff6fa;
        }

        .perfume-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            align-items: center;
        }

        .perfume-image {
            height: 600px;
            overflow: hidden;
        }

        .perfume-image img {
            height: 100%;
        }

        .perfume-content h2 {
            font-family: "Playfair Display", serif;
            font-size: 60px;
            line-height: 1;
            margin: 15px 0 25px;
        }

        .perfume-content p {
            color: var(--gray);
            line-height: 1.8;
            margin-bottom: 30px;
        }

        /* ================= TESTIMONIALS ================= */

        .testimonial-section {
            background: var(--black);
            color: white;
        }

        .testimonial {
            max-width: 850px;
            margin: auto;
            text-align: center;
        }

        .stars {
            color: var(--gold);
            font-size: 24px;
            margin-bottom: 25px;
        }

        .testimonial blockquote {
            font-family: "Playfair Display", serif;
            font-size: 34px;
            line-height: 1.5;
            font-style: italic;
            margin-bottom: 25px;
        }

        .testimonial cite {
            color: var(--pink);
            font-style: normal;
        }

        /* ================= NEWSLETTER ================= */

        .newsletter {
            background: var(--pink);
            text-align: center;
        }

        .newsletter h2 {
            font-family: "Playfair Display", serif;
            font-size: 45px;
            margin-bottom: 12px;
        }

        .newsletter p {
            margin-bottom: 25px;
            color: #603c4a;
        }

        .newsletter-form {
            max-width: 600px;
            margin: auto;
            display: flex;
            background: white;
            padding: 5px;
        }

        .newsletter-form input {
            flex: 1;
            border: none;
            outline: none;
            padding: 15px;
            font-size: 14px;
        }

        .newsletter-form button {
            border: none;
            background: var(--black);
            color: white;
            padding: 0 25px;
            cursor: pointer;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #111;
            color: white;
            padding: 70px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
            margin-bottom: 50px;
        }

        .footer-brand h2 {
            font-family: "Playfair Display", serif;
            font-size: 34px;
            margin-bottom: 15px;
        }

        .footer-brand h2 span {
            color: var(--hot-pink);
        }

        .footer-brand p {
            color: #aaa;
            line-height: 1.8;
            max-width: 350px;
        }

        .footer-column h4 {
            margin-bottom: 20px;
            color: var(--pink);
        }

        .footer-column a {
            display: block;
            color: #aaa;
            margin-bottom: 11px;
            font-size: 14px;
            transition: var(--transition);
        }

        .footer-column a:hover {
            color: white;
            padding-left: 5px;
        }

        .copyright {
            border-top: 1px solid #333;
            padding-top: 25px;
            text-align: center;
            color: #777;
            font-size: 13px;
        }

        /* ================= CART ================= */

        .cart-panel {
            position: fixed;
            top: 0;
            right: -450px;
            width: min(420px, 90%);
            height: 100vh;
            background: white;
            z-index: 2000;
            box-shadow: -10px 0 40px rgba(0,0,0,0.15);
            transition: right 0.4s ease;
            display: flex;
            flex-direction: column;
        }

        .cart-panel.active {
            right: 0;
        }

        .cart-header {
            padding: 25px;
            border-bottom: 1px solid #eee;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-header h2 {
            font-family: "Playfair Display", serif;
        }

        .close-btn {
            border: none;
            background: none;
            font-size: 25px;
            cursor: pointer;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 20px;
        }

        .cart-item {
            display: flex;
            gap: 15px;
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #eee;
        }

        .cart-item img {
            width: 80px;
            height: 90px;
        }

        .cart-item h4 {
            font-family: "Playfair Display", serif;
            margin-bottom: 5px;
        }

        .cart-item p {
            color: var(--hot-pink);
            font-size: 13px;
        }

        .remove-btn {
            margin-top: 8px;
            border: none;
            background: none;
            color: #999;
            cursor: pointer;
            font-size: 12px;
        }

        .cart-footer {
            border-top: 1px solid #eee;
            padding: 25px;
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .checkout-btn {
            width: 100%;
            border: none;
            background: var(--hot-pink);
            color: white;
            padding: 15px;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* ================= SEARCH ================= */

        .search-modal {
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,0.92);
            z-index: 3000;
            display: none;
            align-items: center;
            justify-content: center;
            padding: 30px;
        }

        .search-modal.active {
            display: flex;
        }

        .search-box {
            width: min(700px, 100%);
        }

        .search-box h2 {
            color: white;
            font-family: "Playfair Display", serif;
            font-size: 45px;
            margin-bottom: 20px;
        }

        .search-input {
            width: 100%;
            padding: 20px;
            border: none;
            outline: none;
            font-size: 18px;
        }

        .search-close {
            position: absolute;
            top: 30px;
            right: 40px;
            color: white;
            border: none;
            background: none;
            font-size: 35px;
            cursor: pointer;
        }

        /* ================= TOAST ================= */

        .toast {
            position: fixed;
            right: 25px;
            bottom: 25px;
            background: var(--black);
            color: white;
            padding: 15px 22px;
            transform: translateY(100px);
            opacity: 0;
            transition: var(--transition);
            z-index: 5000;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* ================= ANIMATIONS ================= */

        @keyframes float {
            0%, 100% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(25px);
            }
        }

        .reveal {
            opacity: 0;
            transform: translateY(35px);
            transition: opacity 0.8s ease, transform 0.8s ease;
        }

        .reveal.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 950px) {
            .nav-links {
                display: none;
            }

            .categories,
            .products {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .perfume-grid,
            .split-section {
                grid-template-columns: 1fr;
            }

            .split-content {
                padding: 50px 30px;
            }
        }

        @media (max-width: 600px) {
            section {
                padding: 65px 0;
            }

            .hero {
                min-height: 600px;
            }

            .hero h1 {
                font-size: 52px;
            }

            .categories,
            .products {
                grid-template-columns: 1fr;
            }

            .category-card {
                height: 400px;
            }

            .product-image {
                height: 420px;
            }

            .footer-grid {
                grid-template-columns: 1fr;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form button {
                padding: 15px;
            }

            .perfume-content h2,
            .split-content h2 {
                font-size: 45px;
            }

            .testimonial blockquote {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>

    <!-- ================= HEADER ================= -->

    <header>
        <div class="container nav">

            <a href="#" class="logo">
                Kaycee <span>Couture</span>
            </a>

            <ul class="nav-links">
                <li><a href="#new-arrivals">New Arrivals</a></li>
                <li><a href="#collections">Collections</a></li>
                <li><a href="#women">Women</a></li>
                <li><a href="#men">Men</a></li>
                <li><a href="#shoes">Shoes & Accessories</a></li>
                <li><a href="#perfumes">Perfumes</a></li>
                <li><a href="#kids">Kids</a></li>
            </ul>

            <div class="nav-icons">
                <button class="icon-btn" onclick="openSearch()" aria-label="Search">
                    🔍
                </button>

                <div class="cart-wrapper">
                    <button class="icon-btn" onclick="openCart()" aria-label="Shopping cart">
                        🛍️
                    </button>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
            </div>

        </div>
    </header>

    <!-- ================= HERO ================= -->

    <section class="hero">
        <div class="container">
            <div class="hero-content reveal">

                <div class="hero-small">
                    Kaycee's Couture • New Season
                </div>

                <h1>
                    Fashion that
                    <span>defines you.</span>
                </h1>

                <p>
                    Discover a world of elegant fashion, luxury pieces,
                    timeless accessories and unforgettable fragrances
                    created for those who love to stand out.
                </p>

                <a href="#new-arrivals" class="btn btn-pink">
                    Shop New Arrivals
                </a>

            </div>
        </div>
    </section>

    <!-- ================= CATEGORIES ================= -->

    <section>
        <div class="container">

            <div class="section-heading reveal">
                <small>Explore</small>
                <h2>Shop by Category</h2>
                <p>
                    Discover carefully selected pieces designed to elevate
                    every part of your wardrobe.
                </p>
            </div>

            <div class="categories">

                <a href="#women" class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=900&q=85" alt="Women's fashion">
                    <div class="category-overlay">
                        <h3>Women</h3>
                    </div>
                </a>

                <a href="#men" class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?auto=format&fit=crop&w=900&q=85" alt="Men's fashion">
                    <div class="category-overlay">
                        <h3>Men</h3>
                    </div>
                </a>

                <a href="#shoes" class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=900&q=85" alt="Shoes and accessories">
                    <div class="category-overlay">
                        <h3>Shoes & Accessories</h3>
                    </div>
                </a>

                <a href="#perfumes" class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=900&q=85" alt="Luxury perfume">
                    <div class="category-overlay">
                        <h3>Perfumes</h3>
                    </div>
                </a>

            </div>

        </div>
    </section>

    <!-- ================= NEW ARRIVALS ================= -->

    <section id="new-arrivals">

        <div class="container">

            <div class="section-heading reveal">
                <small>Just In</small>
                <h2>New Arrivals</h2>
                <p>
                    Fresh styles, new silhouettes and statement pieces
                    for the season.
                </p>
            </div>

            <div class="products">

                <div class="product-card reveal">
                    <div class="product-image">
                        <span class="sale-badge">New</span>
                        <img src="https://images.unsplash.com/photo-1539008835657-9e8e9680c956?auto=format&fit=crop&w=800&q=85" alt="Elegant dress">
                    </div>
                    <div class="product-info">
                        <h3>Midnight Elegance Dress</h3>
                        <p>Luxury evening collection</p>
                        <span class="price">$189</span>
                        <button class="add-btn" onclick="addToCart('Midnight Elegance Dress',189,'https://images.unsplash.com/photo-1539008835657-9e8e9680c956?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <span class="sale-badge">New</span>
                        <img src="https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85" alt="Fashion blazer">
                    </div>
                    <div class="product-info">
                        <h3>Signature Blazer</h3>
                        <p>Modern tailored collection</p>
                        <span class="price">$225</span>
                        <button class="add-btn" onclick="addToCart('Signature Blazer',225,'https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <span class="sale-badge">New</span>
                        <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85" alt="Fashion outfit">
                    </div>
                    <div class="product-info">
                        <h3>Parisian Statement Set</h3>
                        <p>Chic everyday luxury</p>
                        <span class="price">$165</span>
                        <button class="add-btn" onclick="addToCart('Parisian Statement Set',165,'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <span class="sale-badge">New</span>
                        <img src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=800&q=85" alt="Luxury fashion">
                    </div>
                    <div class="product-info">
                        <h3>Rose Gold Collection</h3>
                        <p>Exclusive seasonal piece</p>
                        <span class="price">$210</span>
                        <button class="add-btn" onclick="addToCart('Rose Gold Collection',210,'https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

            </div>
        </div>

    </section>

    <!-- ================= COLLECTION ================= -->

    <section id="collections" class="collection-banner">

        <div class="container">
            <div class="collection-content reveal">

                <small>The Signature Collection</small>

                <h2>
                    Made to be
                    remembered.
                </h2>

                <p>
                    Sophisticated designs, luxurious textures and
                    unforgettable details come together in our signature
                    collection.
                </p>

                <a href="#women" class="btn btn-pink">
                    Explore Collection
                </a>

            </div>
        </div>

    </section>

    <!-- ================= WOMEN ================= -->

    <section id="women">

        <div class="split-section">

            <div class="split-image">
                <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=1200&q=85" alt="Women's fashion">
            </div>

            <div class="split-content">
                <div class="reveal">

                    <small>For Her</small>

                    <h2>
                        Women's
                        Collection
                    </h2>

                    <p>
                        Elegant dresses, sophisticated tailoring,
                        statement pieces and luxurious essentials
                        designed for the modern woman.
                    </p>

                    <a href="#new-arrivals" class="btn">
                        Shop Women
                    </a>

                </div>
            </div>

        </div>

    </section>

    <!-- ================= MEN ================= -->

    <section id="men">

        <div class="split-section">

            <div class="split-content">
                <div class="reveal">

                    <small>For Him</small>

                    <h2>
                        Men's
                        Collection
                    </h2>

                    <p>
                        Refined tailoring, premium essentials and
                        modern statement pieces created for confident
                        and sophisticated style.
                    </p>

                    <a href="#new-arrivals" class="btn">
                        Shop Men
                    </a>

                </div>
            </div>

            <div class="split-image">
                <img src="https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?auto=format&fit=crop&w=1200&q=85" alt="Men's fashion">
            </div>

        </div>

    </section>

    <!-- ================= SHOES ================= -->

    <section id="shoes">

        <div class="container">

            <div class="section-heading reveal">
                <small>Complete Your Look</small>
                <h2>Shoes & Accessories</h2>
                <p>
                    The perfect finishing touches for every outfit.
                </p>
            </div>

            <div class="products">

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=800&q=85" alt="High heels">
                    </div>
                    <div class="product-info">
                        <h3>Crystal Heels</h3>
                        <p>Statement footwear</p>
                        <span class="price">$145</span>
                        <button class="add-btn" onclick="addToCart('Crystal Heels',145,'https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=85" alt="Luxury handbag">
                    </div>
                    <div class="product-info">
                        <h3>Classic Luxe Bag</h3>
                        <p>Premium handbag</p>
                        <span class="price">$195</span>
                        <button class="add-btn" onclick="addToCart('Classic Luxe Bag',195,'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=800&q=85" alt="Fashion sunglasses">
                    </div>
                    <div class="product-info">
                        <h3>Luxury Shades</h3>
                        <p>Designer-inspired sunglasses</p>
                        <span class="price">$85</span>
                        <button class="add-btn" onclick="addToCart('Luxury Shades',85,'https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1627292441194-0280c19e74a8?auto=format&fit=crop&w=800&q=85" alt="Fashion jewelry">
                    </div>
                    <div class="product-info">
                        <h3>Golden Glow Jewelry</h3>
                        <p>Elegant statement jewelry</p>
                        <span class="price">$95</span>
                        <button class="add-btn" onclick="addToCart('Golden Glow Jewelry',95,'https://images.unsplash.com/photo-1627292441194-0280c19e74a8?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

            </div>
        </div>

    </section>

    <!-- ================= PERFUMES ================= -->

    <section id="perfumes" class="perfume-section">

        <div class="container">

            <div class="perfume-grid">

                <div class="perfume-image reveal">
                    <img src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=1200&q=85" alt="Luxury perfume">
                </div>

                <div class="perfume-content reveal">

                    <small>Fragrance House</small>

                    <h2>
                        Your signature
                        scent.
                    </h2>

                    <p>
                        Discover luxurious fragrances designed to leave
                        a lasting impression. From floral elegance to
                        warm and sensual notes, find the fragrance that
                        tells your story.
                    </p>

                    <a href="#perfume-products" class="btn btn-pink">
                        Shop Perfumes
                    </a>

                </div>

            </div>

        </div>

    </section>

    <!-- ================= PERFUME PRODUCTS ================= -->

    <section id="perfume-products">

        <div class="container">

            <div class="products">

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=800&q=85" alt="Luxury perfume">
                    </div>
                    <div class="product-info">
                        <h3>Kaycee Rose</h3>
                        <p>Floral Eau de Parfum</p>
                        <span class="price">$120</span>
                        <button class="add-btn" onclick="addToCart('Kaycee Rose',120,'https://images.unsplash.com/photo-1594035910387-fea47794261f?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1615634260167-c8cdede054de?auto=format&fit=crop&w=800&q=85" alt="Perfume bottle">
                    </div>
                    <div class="product-info">
                        <h3>Golden Nights</h3>
                        <p>Warm luxury fragrance</p>
                        <span class="price">$135</span>
                        <button class="add-btn" onclick="addToCart('Golden Nights',135,'https://images.unsplash.com/photo-1615634260167-c8cdede054de?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?auto=format&fit=crop&w=800&q=85" alt="Perfume">
                    </div>
                    <div class="product-info">
                        <h3>Velvet Bloom</h3>
                        <p>Romantic signature scent</p>
                        <span class="price">$110</span>
                        <button class="add-btn" onclick="addToCart('Velvet Bloom',110,'https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

                <div class="product-card reveal">
                    <div class="product-image">
                        <img src="https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=800&q=85" alt="Designer fragrance">
                    </div>
                    <div class="product-info">
                        <h3>Midnight Muse</h3>
                        <p>Deep and sensual fragrance</p>
                        <span class="price">$140</span>
                        <button class="add-btn" onclick="addToCart('Midnight Muse',140,'https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=800&q=85')">
                            Add to Bag
                        </button>
                    </div>
                </div>

            </div>

        </div>

    </section>

    <!-- ================= KIDS ================= -->

    <section id="kids">

        <div class="container">

            <div class="section-heading reveal">
                <small>Little Luxury</small>
                <h2>Kids Collection</h2>
                <p>
                    Stylish, comfortable and playful pieces for the
                    next generation of fashion lovers.
                </p>
            </div>

            <div class="categories">

                <div class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=900&q=85" alt="Kids fashion">
                    <div class="category-overlay">
                        <h3>Girls</h3>
                    </div>
                </div>

                <div class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=900&q=85" alt="Children fashion">
                    <div class="category-overlay">
                        <h3>Boys</h3>
                    </div>
                </div>

                <div class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1522771930-78848d9293e8?auto=format&fit=crop&w=900&q=85" alt="Baby fashion">
                    <div class="category-overlay">
                        <h3>Baby</h3>
                    </div>
                </div>

                <div class="category-card reveal">
                    <img src="https://images.unsplash.com/photo-1540574163026-643ea20ade25?auto=format&fit=crop&w=900&q=85" alt="Kids style">
                    <div class="category-overlay">
                        <h3>Mini Style</h3>
                    </div>
                </div>

            </div>

        </div>

    </section>

    <!-- ================= TESTIMONIAL ================= -->

    <section class="testimonial-section">

        <div class="container">

            <div class="testimonial reveal">

                <div class="stars">
                    ★ ★ ★ ★ ★
                </div>

                <blockquote>
                    "The quality is incredible. I wore my
                    Kaycee's dress to an event and received
                    compliments all night!"
                </blockquote>

                <cite>
                    — Happy Kaycee's Couture Customer
                </cite>

            </div>

        </div>

    </section>

    <!-- ================= NEWSLETTER ================= -->

    <section class="newsletter">

        <div class="container">

            <div class="reveal">

                <h2>Stay in the Style Loop</h2>

                <p>
                    Subscribe for exclusive collections, special offers
                    and fashion inspiration from Kaycee's Couture.
                </p>

                <form class="newsletter-form" onsubmit="subscribe(event)">
                    <input
                        type="email"
                        id="email"
                        placeholder="Enter your email address"
                        required
                    >

                    <button type="submit">
                        Subscribe
                    </button>
                </form>

            </div>

        </div>

    </section>

    <!-- ================= FOOTER ================= -->

    <footer>

        <div class="container">

            <div class="footer-grid">

                <div class="footer-brand">

                    <h2>
                        Kaycee's <span>Couture</span>
                    </h2>

                    <p>
                        Fashion, beauty and luxury for every moment.
                        Discover your signature style with Kaycee's Couture.
                    </p>

                </div>

                <div class="footer-column">

                    <h4>Shop</h4>

                    <a href="#new-arrivals">New Arrivals</a>
                    <a href="#women">Women</a>
                    <a href="#men">Men</a>
                    <a href="#kids">Kids</a>

                </div>

                <div class="footer-column">

                    <h4>Collections</h4>

                    <a href="#collections">Signature Collection</a>
                    <a href="#shoes">Shoes & Accessories</a>
                    <a href="#perfumes">Perfumes</a>
                    <a href="#new-arrivals">Sale</a>

                </div>

                <div class="footer-column">

                    <h4>Help</h4>

                    <a href="#">Contact Us</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Privacy Policy</a>

                </div>

            </div>

            <div class="copyright">
                © 2026 Kaycee's Couture. All rights reserved.
            </div>

        </div>

    </footer>

    <!-- ================= CART PANEL ================= -->

    <div class="cart-panel" id="cartPanel">

        <div class="cart-header">

            <h2>Your Bag</h2>

            <button class="close-btn" onclick="closeCart()">
                ×
            </button>

        </div>

        <div class="cart-items" id="cartItems">

            <p style="color:#777;text-align:center;padding:40px 0;">
                Your shopping bag is empty.
            </p>

        </div>

        <div class="cart-footer">

            <div class="cart-total">
                <span>Total</span>
                <span id="cartTotal">$0.00</span>
            </div>

            <button class="checkout-btn" onclick="checkout()">
                Proceed to Checkout
            </button>

        </div>

    </div>

    <!-- ================= SEARCH MODAL ================= -->

    <div class="search-modal" id="searchModal">

        <button class="search-close" onclick="closeSearch()">
            ×
        </button>

        <div class="search-box">

            <h2>
                Search Kaycee's Couture
            </h2>

            <input
                class="search-input"
                type="text"
                placeholder="Search dresses, shoes, perfumes..."
                id="searchInput"
            >

        </div>

    </div>

    <!-- ================= TOAST ================= -->

    <div class="toast" id="toast">
        Added to your shopping bag!
    </div>

    <!-- ================= JAVASCRIPT ================= -->

    <script>

        let cart = [];

        /* ================= CART ================= */

        function addToCart(name, price, image) {

            cart.push({
                name: name,
                price: price,
                image: image
            });

            updateCart();

            showToast(name + " added to your bag!");
        }

        function updateCart() {

            const cartItems = document.getElementById("cartItems");
            const cartCount = document.getElementById("cartCount");
            const cartTotal = document.getElementById("cartTotal");

            cartCount.textContent = cart.length;

            if (cart.length === 0) {

                cartItems.innerHTML = `
                    <p style="color:#777;text-align:center;padding:40px 0;">
                        Your shopping bag is empty.
                    </p>
                `;

                cartTotal.textContent = "$0.00";
                return;
            }

            let total = 0;

            cartItems.innerHTML = cart.map((item, index) => {

                total += item.price;

                return `
                    <div class="cart-item">

                        <img src="${item.image}" alt="${item.name}">

                        <div>
                            <h4>${item.name}</h4>
                            <p>$${item.price.toFixed(2)}</p>

                            <button
                                class="remove-btn"
                                onclick="removeCart(${index})"
                            >
                                Remove
                            </button>
                        </div>

                    </div>
                `;

            }).join("");

            cartTotal.textContent = "$" + total.toFixed(2);
        }

        function removeCart(index) {

            cart.splice(index, 1);

            updateCart();

            showToast("Item removed from your bag.");
        }

        function openCart() {

            document
                .getElementById("cartPanel")
                .classList.add("active");
        }

        function closeCart() {

            document
                .getElementById("cartPanel")
                .classList.remove("active");
        }

        function checkout() {

            if (cart.length === 0) {

                showToast("Your shopping bag is empty.");

                return;
            }

            showToast("Checkout is coming soon!");

        }

        /* ================= SEARCH ================= */

        function openSearch() {

            document
                .getElementById("searchModal")
                .classList.add("active");

            setTimeout(() => {
                document
                    .getElementById("searchInput")
                    .focus();
            }, 100);
        }

        function closeSearch() {

            document
                .getElementById("searchModal")
                .classList.remove("active");
        }

        /* ================= TOAST ================= */

        function showToast(message) {

            const toast = document.getElementById("toast");

            toast.textContent = message;

            toast.classList.add("show");

            setTimeout(() => {

                toast.classList.remove("show");

            }, 2500);
        }

        /* ================= NEWSLETTER ================= */

        function subscribe(event) {

            event.preventDefault();

            const email =
                document.getElementById("email").value;

            if (email) {

                showToast("Thank you for subscribing to Kaycee's Couture!");

                document
                    .getElementById("email")
                    .value = "";
            }
        }

        /* ================= ESCAPE KEY ================= */

        document.addEventListener("keydown", function(event) {

            if (event.key === "Escape") {

                closeCart();
                closeSearch();

            }

        });

        /* ================= SCROLL REVEAL ================= */

        const observer =
            new IntersectionObserver(
                entries => {

                    entries.forEach(entry => {

                        if (entry.isIntersecting) {

                            entry.target.classList.add("visible");

                        }

                    });

                },
                {
                    threshold: 0.12
                }
            );

        document
            .querySelectorAll(".reveal")
            .forEach(element => {

                observer.observe(element);

            });

    </script>

</body>
</html>
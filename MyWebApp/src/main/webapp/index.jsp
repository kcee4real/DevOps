<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Kcee's Couture | Fashion & Luxury</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

/* =========================
   VARIABLES
========================= */

:root {
    --pink: #ff3d81;
    --hotpink: #ff0f6b;
    --purple: #7928ca;
    --orange: #ff8a00;
    --yellow: #ffd166;
    --cream: #fff4e6;
    --dark: #21151b;
    --light: #fff8fb;
    --green: #00a878;
    --white: #ffffff;
    --gray: #777;
    --border: #eeeeee;
}

/* =========================
   RESET
========================= */

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
    background: var(--light);
    color: var(--dark);
    overflow-x: hidden;
}

button,
input {
    font-family: inherit;
}

button {
    cursor: pointer;
}

/* =========================
   ANNOUNCEMENT
========================= */

.announcement {
    background: linear-gradient(
        90deg,
        var(--hotpink),
        var(--purple),
        var(--orange)
    );

    background-size: 300% 300%;
    animation: gradientMove 8s infinite linear;

    color: white;
    text-align: center;
    padding: 10px;
    font-size: 13px;
    letter-spacing: 1px;
}

/* =========================
   HEADER
========================= */

header {
    position: sticky;
    top: 0;
    z-index: 999;
    background: rgba(255,255,255,.92);
    backdrop-filter: blur(15px);
    border-bottom: 1px solid var(--border);
}

.navbar {
    max-width: 1400px;
    margin: auto;
    min-height: 85px;
    padding: 0 30px;

    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
}

.logo {
    font-family: "Playfair Display", serif;
    font-size: 30px;
    font-weight: 700;
    white-space: nowrap;
}

.logo span {
    color: var(--pink);
}

.nav-menu {
    display: flex;
    list-style: none;
    gap: 22px;
}

.nav-menu a {
    text-decoration: none;
    color: var(--dark);
    font-size: 13px;
    font-weight: 500;
    position: relative;
    transition: .3s;
}

.nav-menu a:hover {
    color: var(--pink);
}

.nav-menu a::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: -7px;
    width: 0;
    height: 2px;
    background: var(--pink);
    transition: .3s;
}

.nav-menu a:hover::after {
    width: 100%;
}

.nav-icons {
    display: flex;
    align-items: center;
    gap: 10px;
}

.nav-icon {
    width: 42px;
    height: 42px;
    border: none;
    border-radius: 50%;
    background: #fff0f5;
    font-size: 18px;
    transition: .3s;
    position: relative;
}

.nav-icon:hover {
    background: var(--pink);
    color: white;
    transform: translateY(-4px);
}

.cart-count,
.wishlist-count {
    position: absolute;
    top: -4px;
    right: -4px;

    min-width: 18px;
    height: 18px;

    display: flex;
    align-items: center;
    justify-content: center;

    background: var(--hotpink);
    color: white;
    border-radius: 50%;

    font-size: 10px;
    font-weight: 700;
}

/* =========================
   MOBILE MENU
========================= */

.mobile-menu-button {
    display: none;
    border: none;
    background: #fff0f5;
    width: 42px;
    height: 42px;
    border-radius: 50%;
    font-size: 20px;
}

.mobile-menu {
    display: none;
    background: white;
    padding: 20px 30px;
    border-top: 1px solid #eee;
}

.mobile-menu.active {
    display: block;
}

.mobile-menu a {
    display: block;
    padding: 13px 0;
    text-decoration: none;
    color: var(--dark);
    border-bottom: 1px solid #eee;
}

/* =========================
   HERO
========================= */

.hero {
    min-height: 720px;

    display: grid;
    grid-template-columns: 45% 55%;

    overflow: hidden;

    background:
        linear-gradient(
            110deg,
            #fff0f5,
            #ffe3ef,
            #ffffff
        );
}

.hero-text {
    padding: 100px 60px 80px 9%;

    display: flex;
    flex-direction: column;
    justify-content: center;

    animation: slideLeft 1s ease;
}

.small-title {
    color: var(--pink);
    font-size: 13px;
    letter-spacing: 4px;
    text-transform: uppercase;
    font-weight: 600;
    margin-bottom: 20px;
}

.hero h1 {
    font-family: "Playfair Display", serif;
    font-size: clamp(55px, 6vw, 82px);
    line-height: 1;
    margin-bottom: 25px;
}

.hero h1 span {
    color: var(--pink);
    font-style: italic;
}

.hero p {
    color: #6d5961;
    max-width: 520px;
    line-height: 1.8;
    margin-bottom: 35px;
}

.shop-button {
    width: max-content;

    padding: 16px 32px;

    border: none;
    border-radius: 50px;

    background: linear-gradient(
        90deg,
        var(--hotpink),
        var(--purple)
    );

    color: white;
    font-weight: 600;

    box-shadow: 0 15px 30px #ff0f6b35;

    transition: .4s;
}

.shop-button:hover {
    transform: translateY(-5px) scale(1.03);
    box-shadow: 0 20px 40px #ff0f6b50;
}

.hero-image {
    position: relative;
    min-height: 650px;

    background:
        linear-gradient(
            180deg,
            #ff8a0020,
            #ff0f6b20
        ),
        url("https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1400&q=85")
        center/cover;
}

.floating-tag {
    position: absolute;

    background: white;

    padding: 18px 25px;

    border-radius: 18px;

    box-shadow: 0 15px 40px #0002;

    animation: float 4s ease-in-out infinite;
}

.tag1 {
    top: 15%;
    left: 8%;
}

.tag2 {
    bottom: 15%;
    right: 8%;
    animation-delay: 1s;
}

.floating-tag strong {
    display: block;
    font-size: 18px;
}

.floating-tag small {
    color: #888;
}

/* =========================
   SECTION HEADINGS
========================= */

.section-heading {
    text-align: center;
    margin-bottom: 40px;
}

.section-heading h2 {
    font-family: "Playfair Display", serif;
    font-size: 45px;
}

.section-heading p {
    color: #888;
    margin-top: 8px;
}

/* =========================
   CATEGORIES
========================= */

.categories {
    max-width: 1300px;
    margin: 90px auto;
    padding: 0 25px;
}

.category-grid {
    display: grid;
    grid-template-columns: repeat(7, 1fr);
    gap: 15px;
}

.category {
    height: 170px;

    border-radius: 25px;

    overflow: hidden;

    position: relative;

    cursor: pointer;

    transition: .4s;
}

.category:hover {
    transform: translateY(-10px);
}

.category img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.category:hover img {
    transform: scale(1.12);
}

.category::after {
    content: "";

    position: absolute;
    inset: 0;

    background: linear-gradient(
        transparent,
        #000b
    );
}

.category-name {
    position: absolute;

    bottom: 18px;
    left: 18px;

    color: white;

    font-weight: 600;

    z-index: 2;
}

/* =========================
   PRODUCTS
========================= */

.products {
    max-width: 1350px;
    margin: 110px auto;
    padding: 0 25px;
}

.product-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 25px;
}

.product-card {
    background: white;

    border-radius: 25px;

    overflow: hidden;

    box-shadow: 0 10px 35px #0000000b;

    transition: .4s;

    position: relative;
}

.product-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 25px 50px #0002;
}

.product-image {
    height: 390px;

    position: relative;

    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .6s;
}

.product-card:hover .product-image img {
    transform: scale(1.08);
}

.badge {
    position: absolute;

    top: 15px;
    left: 15px;

    padding: 7px 12px;

    border-radius: 30px;

    background: var(--pink);

    color: white;

    font-size: 11px;
    font-weight: 600;

    z-index: 3;
}

.heart {
    position: absolute;

    top: 15px;
    right: 15px;

    width: 40px;
    height: 40px;

    border-radius: 50%;

    background: white;

    border: none;

    font-size: 18px;

    z-index: 3;

    transition: .3s;
}

.heart:hover,
.heart.liked {
    background: #ffebf2;
    color: red;
    transform: scale(1.15);
}

.product-info {
    padding: 20px;
}

.product-info h3 {
    font-family: "Playfair Display", serif;
    font-size: 20px;
}

.product-info p {
    color: #999;
    font-size: 13px;
    margin: 6px 0;
}

.price {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 15px;
}

.price strong {
    font-size: 18px;
}

.add-cart {
    border: none;

    background: var(--dark);
    color: white;

    padding: 9px 14px;

    border-radius: 30px;

    transition: .3s;
}

.add-cart:hover {
    background: var(--pink);
    transform: scale(1.05);
}

/* =========================
   COLLECTION
========================= */

.collection-banner {
    max-width: 1350px;
    margin: 100px auto;

    min-height: 520px;

    border-radius: 35px;

    overflow: hidden;

    display: flex;
    align-items: center;

    padding: 70px;

    color: white;

    background:
        linear-gradient(
            90deg,
            #2d0b32dd,
            #2d0b3260
        ),
        url("https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1600&q=85")
        center/cover;
}

.collection-content {
    max-width: 550px;
}

.collection-content small {
    letter-spacing: 4px;
    color: var(--yellow);
}

.collection-content h2 {
    font-family: "Playfair Display", serif;
    font-size: 65px;
    line-height: 1.05;
    margin: 15px 0;
}

.collection-content p {
    line-height: 1.8;
    color: #ddd;
    margin-bottom: 30px;
}

/* =========================
   SPLIT FASHION
========================= */

.split-fashion {
    max-width: 1350px;
    margin: 100px auto;

    display: grid;
    grid-template-columns: 1fr 1fr;

    gap: 25px;

    padding: 0 25px;
}

.fashion-box {
    min-height: 500px;

    border-radius: 30px;

    overflow: hidden;

    position: relative;
}

.fashion-box img {
    width: 100%;
    height: 100%;

    object-fit: cover;

    transition: .7s;
}

.fashion-box:hover img {
    transform: scale(1.08);
}

.fashion-overlay {
    position: absolute;
    inset: 0;

    background: linear-gradient(
        transparent,
        #000a
    );

    display: flex;
    flex-direction: column;
    justify-content: flex-end;

    padding: 40px;

    color: white;
}

.fashion-overlay h2 {
    font-family: "Playfair Display", serif;
    font-size: 45px;
}

.fashion-overlay p {
    margin: 8px 0 20px;
    color: #ddd;
}

/* =========================
   PERFUME
========================= */

.perfume {
    padding: 100px 30px;

    background:
        radial-gradient(
            circle at 20% 50%,
            #ff3d8130,
            transparent 30%
        ),
        radial-gradient(
            circle at 80% 30%,
            #7928ca35,
            transparent 30%
        ),
        #fff0f5;
}

.perfume-inner {
    max-width: 1300px;

    margin: auto;

    display: grid;
    grid-template-columns: 1fr 1fr;

    align-items: center;

    gap: 70px;
}

.perfume-image {
    height: 550px;

    border-radius: 35px;

    overflow: hidden;
}

.perfume-image img {
    width: 100%;
    height: 100%;

    object-fit: cover;
}

.perfume-text small {
    color: var(--pink);
    letter-spacing: 4px;
}

.perfume-text h2 {
    font-family: "Playfair Display", serif;

    font-size: 60px;

    line-height: 1.1;

    margin: 15px 0 25px;
}

.perfume-text p {
    line-height: 1.9;

    color: #6e5c63;

    margin-bottom: 30px;
}

/* =========================
   TESTIMONIALS
========================= */

.testimonials {
    max-width: 1200px;

    margin: 100px auto;

    padding: 0 25px;
}

.testimonial-grid {
    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 25px;
}

.testimonial {
    background: white;

    padding: 30px;

    border-radius: 25px;

    box-shadow: 0 10px 30px #0000000a;

    transition: .3s;
}

.testimonial:hover {
    transform: translateY(-8px);
}

.stars {
    color: #ffad00;

    margin-bottom: 15px;
}

.testimonial p {
    color: #666;

    line-height: 1.8;

    font-size: 14px;
}

.customer {
    display: flex;

    align-items: center;

    gap: 12px;

    margin-top: 20px;
}

.customer img {
    width: 45px;
    height: 45px;

    border-radius: 50%;

    object-fit: cover;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter {
    margin-top: 80px;

    padding: 80px 25px;

    text-align: center;

    color: white;

    background:
        linear-gradient(
            110deg,
            var(--hotpink),
            var(--purple),
            var(--orange)
        );

    background-size: 300%;

    animation: gradientMove 8s infinite linear;
}

.newsletter h2 {
    font-family: "Playfair Display", serif;

    font-size: 48px;
}

.newsletter p {
    margin: 12px 0 30px;

    color: #eee;
}

.newsletter-form {
    display: flex;

    max-width: 550px;

    margin: auto;

    background: white;

    padding: 6px;

    border-radius: 50px;
}

.newsletter-form input {
    flex: 1;

    border: none;

    outline: none;

    padding: 15px 20px;

    border-radius: 50px;
}

.newsletter-form button {
    border: none;

    border-radius: 50px;

    padding: 0 25px;

    background: var(--dark);

    color: white;
}

/* =========================
   FOOTER
========================= */

footer {
    background: #1b1116;

    color: white;

    padding: 70px 30px 30px;
}

.footer-grid {
    max-width: 1300px;

    margin: auto;

    display: grid;

    grid-template-columns: 2fr 1fr 1fr 1fr;

    gap: 50px;
}

.footer-brand h2 {
    font-family: "Playfair Display", serif;

    font-size: 32px;
}

.footer-brand h2 span {
    color: var(--pink);
}

.footer-brand p {
    color: #aaa;

    line-height: 1.8;

    margin-top: 15px;

    max-width: 350px;
}

footer h3 {
    margin-bottom: 18px;
}

footer ul {
    list-style: none;
}

footer li {
    margin: 10px 0;
}

footer a {
    color: #aaa;

    text-decoration: none;

    transition: .3s;
}

footer a:hover {
    color: white;
}

.socials {
    display: flex;
    gap: 10px;
    margin-top: 25px;
}

.socials a {
    width: 38px;
    height: 38px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 50%;

    background: #ffffff12;

    color: white;
}

.socials a:hover {
    background: var(--pink);
}

.copyright {
    text-align: center;

    color: #777;

    border-top: 1px solid #ffffff15;

    margin-top: 50px;

    padding-top: 25px;
}

/* =========================
   CART
========================= */

.cart-panel {
    position: fixed;

    top: 0;
    right: -450px;

    width: 420px;

    height: 100vh;

    background: white;

    z-index: 2000;

    box-shadow: -15px 0 50px #0002;

    padding: 30px;

    transition: .5s;

    overflow-y: auto;
}

.cart-panel.open {
    right: 0;
}

.cart-header {
    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 30px;
}

.close-cart {
    border: none;

    background: #f5f5f5;

    width: 40px;
    height: 40px;

    border-radius: 50%;

    font-size: 20px;
}

.cart-item {
    display: grid;

    grid-template-columns: 1fr auto;

    gap: 15px;

    padding: 18px 0;

    border-bottom: 1px solid #eee;
}

.cart-item-name {
    font-weight: 600;
}

.cart-item-price {
    color: var(--pink);

    font-size: 13px;
}

.quantity {
    display: flex;

    align-items: center;

    gap: 8px;

    margin-top: 10px;
}

.quantity button {
    width: 27px;
    height: 27px;

    border: none;

    border-radius: 50%;

    background: #ffe8ef;
}

.remove-item {
    border: none;

    background: transparent;

    color: #ff3d81;

    font-size: 12px;
}

.cart-total {
    margin-top: 30px;

    display: flex;

    justify-content: space-between;

    font-size: 20px;

    font-weight: bold;
}

.checkout {
    width: 100%;

    padding: 15px;

    border: none;

    border-radius: 50px;

    background:
        linear-gradient(
            90deg,
            var(--hotpink),
            var(--purple)
        );

    color: white;

    margin-top: 25px;
}

/* =========================
   SEARCH
========================= */

.search-box {
    position: fixed;

    inset: 0;

    background: #00000090;

    z-index: 3000;

    display: none;

    align-items: center;

    justify-content: center;

    backdrop-filter: blur(10px);
}

.search-box.active {
    display: flex;
}

.search-content {
    width: 90%;

    max-width: 700px;

    background: white;

    padding: 30px;

    border-radius: 25px;

    animation: popup .3s ease;
}

.search-top {
    display: flex;

    justify-content: space-between;

    align-items: center;

    margin-bottom: 20px;
}

.search-close {
    border: none;

    background: #eee;

    width: 35px;
    height: 35px;

    border-radius: 50%;

    font-size: 18px;
}

.search-content input {
    width: 100%;

    padding: 20px;

    border: 1px solid #ddd;

    border-radius: 15px;

    font-size: 18px;

    outline: none;
}

.search-results {
    margin-top: 20px;

    max-height: 300px;

    overflow-y: auto;
}

.search-result {
    display: flex;

    justify-content: space-between;

    align-items: center;

    padding: 15px 0;

    border-bottom: 1px solid #eee;
}

.search-result button {
    border: none;

    background: var(--pink);

    color: white;

    padding: 7px 13px;

    border-radius: 20px;
}

/* =========================
   CHECKOUT MODAL
========================= */

.modal {
    position: fixed;

    inset: 0;

    z-index: 4000;

    display: none;

    align-items: center;

    justify-content: center;

    background: #00000099;

    backdrop-filter: blur(8px);

    padding: 20px;
}

.modal.active {
    display: flex;
}

.modal-card {
    width: 100%;

    max-width: 500px;

    background: white;

    border-radius: 30px;

    padding: 40px;

    animation: popup .3s ease;
}

.modal-card h2 {
    font-family: "Playfair Display", serif;

    font-size: 38px;

    margin-bottom: 10px;
}

.modal-card p {
    color: #777;

    line-height: 1.7;

    margin-bottom: 25px;
}

.modal-actions {
    display: flex;

    gap: 10px;
}

.modal-actions button {
    flex: 1;

    padding: 14px;

    border: none;

    border-radius: 30px;
}

.cancel-btn {
    background: #eee;
}

.confirm-btn {
    background: var(--pink);

    color: white;
}

/* =========================
   TOAST
========================= */

.toast {
    position: fixed;

    bottom: 30px;

    left: 50%;

    transform:
        translateX(-50%)
        translateY(100px);

    background: var(--dark);

    color: white;

    padding: 15px 25px;

    border-radius: 50px;

    z-index: 5000;

    opacity: 0;

    transition: .4s;

    white-space: nowrap;
}

.toast.show {
    opacity: 1;

    transform:
        translateX(-50%)
        translateY(0);
}

/* =========================
   ANIMATIONS
========================= */

@keyframes slideLeft {

    from {
        opacity: 0;
        transform: translateX(-60px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }

}

@keyframes float {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-15px);
    }

}

@keyframes gradientMove {

    0% {
        background-position: 0% 50%;
    }

    50% {
        background-position: 100% 50%;
    }

    100% {
        background-position: 0% 50%;
    }

}

@keyframes popup {

    from {
        opacity: 0;
        transform: scale(.9);
    }

    to {
        opacity: 1;
        transform: scale(1);
    }

}

/* =========================
   RESPONSIVE
========================= */

@media(max-width: 1150px) {

    .nav-menu {
        gap: 12px;
    }

    .category-grid {
        grid-template-columns: repeat(4,1fr);
    }

    .product-grid {
        grid-template-columns: repeat(2,1fr);
    }

}

@media(max-width: 850px) {

    .navbar {
        min-height: 70px;
    }

    .nav-menu {
        display: none;
    }

    .mobile-menu-button {
        display: block;
    }

    .hero {
        grid-template-columns: 1fr;
    }

    .hero-text {
        padding: 80px 30px;
    }

    .hero-image {
        min-height: 550px;
    }

    .category-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .split-fashion,
    .perfume-inner {
        grid-template-columns: 1fr;
    }

    .testimonial-grid {
        grid-template-columns: 1fr;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }

}

@media(max-width: 550px) {

    .announcement {
        font-size: 10px;
    }

    .navbar {
        padding: 0 15px;
    }

    .logo {
        font-size: 23px;
    }

    .nav-icon {
        width: 36px;
        height: 36px;
    }

    .hero h1 {
        font-size: 52px;
    }

    .category-grid,
    .product-grid {
        grid-template-columns: 1fr;
    }

    .collection-banner {
        margin: 60px 15px;
        padding: 40px 25px;
    }

    .collection-content h2 {
        font-size: 45px;
    }

    .perfume-text h2 {
        font-size: 45px;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

    .cart-panel {
        width: 100%;
        right: -100%;
    }

    .newsletter-form {
        flex-direction: column;
        background: transparent;
        gap: 10px;
    }

    .newsletter-form input {
        padding: 16px;
    }

    .newsletter-form button {
        padding: 15px;
    }

    .toast {
        max-width: 90%;
        text-align: center;
        white-space: normal;
    }

}

</style>
</head>

<body>

<!-- =========================
     ANNOUNCEMENT
========================= -->

<div class="announcement">
    ✨ FREE SHIPPING ON ORDERS OVER $150
    &nbsp; • &nbsp;
    NEW SEASON COLLECTION NOW LIVE
    &nbsp; ✨
</div>


<!-- =========================
     HEADER
========================= -->

<header>

<nav class="navbar">

    <div class="logo">
        Kcee's <span>Couture</span>
    </div>

    <ul class="nav-menu">

        <li><a href="#new">New Arrivals</a></li>
        <li><a href="#collections">Collections</a></li>
        <li><a href="#shoes">Shoes</a></li>
        <li><a href="#accessories">Accessories</a></li>
        <li><a href="#perfumes">Perfumes</a></li>
        <li><a href="#women">Woman</a></li>
        <li><a href="#men">Man</a></li>
        <li><a href="#kids">Kids</a></li>

    </ul>

    <div class="nav-icons">

        <button
            class="mobile-menu-button"
            onclick="toggleMobileMenu()">
            ☰
        </button>

        <button
            class="nav-icon"
            onclick="openSearch()"
            aria-label="Search">
            🔍
        </button>

        <button
            class="nav-icon"
            onclick="showWishlist()"
            aria-label="Wishlist">

            ♡

            <span
                class="wishlist-count"
                id="wishlistCount">
                0
            </span>

        </button>

        <button
            class="nav-icon"
            onclick="openCart()"
            aria-label="Shopping bag">

            🛍️

            <span
                class="cart-count"
                id="cartCount">
                0
            </span>

        </button>

    </div>

</nav>

<div class="mobile-menu" id="mobileMenu">

    <a href="#new">New Arrivals</a>
    <a href="#collections">Collections</a>
    <a href="#shoes">Shoes</a>
    <a href="#accessories">Accessories</a>
    <a href="#perfumes">Perfumes</a>
    <a href="#women">Women</a>
    <a href="#men">Men</a>
    <a href="#kids">Kids</a>

</div>

</header>


<!-- =========================
     HERO
========================= -->

<section class="hero">

    <div class="hero-text">

        <div class="small-title">
            Kcee's Couture • New Season
        </div>

        <h1>
            Dress like<br>
            <span>you mean it.</span>
        </h1>

        <p>
            Discover bold silhouettes, luxurious fabrics and
            unforgettable accessories curated for people who
            believe fashion should make a statement.
        </p>

        <button
            class="shop-button"
            onclick="scrollToSection('new')">

            Shop New Arrivals →

        </button>

    </div>

    <div class="hero-image">

        <div class="floating-tag tag1">

            <strong>NEW DROP</strong>

            <small>
                Autumn '26 Collection
            </small>

        </div>

        <div class="floating-tag tag2">

            <strong>40+ Styles</strong>

            <small>
                Just landed ✨
            </small>

        </div>

    </div>

</section>


<!-- =========================
     CATEGORIES
========================= -->

<section class="categories">

    <div class="section-heading">

        <div class="small-title">
            Shop Your Style
        </div>

        <h2>
            Explore Categories
        </h2>

        <p>
            Find your next favorite look.
        </p>

    </div>

    <div class="category-grid">

        <div
            class="category"
            onclick="scrollToSection('new')">

            <img
                src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=600&q=80"
                alt="New Arrivals">

            <div class="category-name">
                New Arrivals
            </div>

        </div>

        <div
            class="category"
            onclick="scrollToSection('collections')">

            <img
                src="https://images.unsplash.com/photo-1469334031218-e382a71b716b?auto=format&fit=crop&w=600&q=80"
                alt="Collections">

            <div class="category-name">
                Collections
            </div>

        </div>

        <div
            class="category"
            onclick="scrollToSection('shoes')">

            <img
                src="https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=600&q=80"
                alt="Shoes">

            <div class="category-name">
                Shoes
            </div>

        </div>

        <div
            class="category"
            onclick="scrollToSection('accessories')">

            <img
                src="https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=600&q=80"
                alt="Accessories">

            <div class="category-name">
                Accessories
            </div>

        </div>

        <div
            class="category"
            onclick="scrollToSection('perfumes')">

            <img
                src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=600&q=80"
                alt="Perfumes">

            <div class="category-name">
                Perfumes
            </div>

        </div>

        <div
            class="category"
            onclick="scrollToSection('women')">

            <img
                src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=600&q=80"
                alt="Women">

            <div class="category-name">
                Women
            </div>

        </div>

        <div
            class="category"
            onclick="scrollToSection('men')">

            <img
                src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=600&q=80"
                alt="Men">

            <div class="category-name">
                Men
            </div>

        </div>

    </div>

</section>


<!-- =========================
     NEW ARRIVALS
========================= -->

<section
    class="products"
    id="new">

    <div class="section-heading">

        <div class="small-title">
            Just Dropped
        </div>

        <h2>
            New Arrivals
        </h2>

        <p>
            Fresh looks. New energy.
            Your wardrobe's next obsession.
        </p>

    </div>

    <div class="product-grid">

        <!-- PRODUCT -->

        <div
            class="product-card"
            data-name="Midnight Satin Dress"
            data-category="women dress">

            <div class="product-image">

                <span class="badge">
                    NEW
                </span>

                <button
                    class="heart"
                    onclick="toggleWishlist(this, 'Midnight Satin Dress')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=800&q=85"
                    alt="Midnight Satin Dress">

            </div>

            <div class="product-info">

                <h3>
                    Midnight Satin Dress
                </h3>

                <p>
                    Women's Collection
                </p>

                <div class="price">

                    <strong>
                        $189
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Midnight Satin Dress',189)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Executive Tailored Suit"
            data-category="men suit">

            <div class="product-image">

                <span class="badge">
                    TRENDING
                </span>

                <button
                    class="heart"
                    onclick="toggleWishlist(this, 'Executive Tailored Suit')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1507679799987-c73779587ccf?auto=format&fit=crop&w=800&q=85"
                    alt="Executive Tailored Suit">

            </div>

            <div class="product-info">

                <h3>
                    Executive Tailored Suit
                </h3>

                <p>
                    Men's Collection
                </p>

                <div class="price">

                    <strong>
                        $329
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Executive Tailored Suit',329)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Luxury Cream Blazer"
            data-category="women blazer">

            <div class="product-image">

                <span class="badge">
                    NEW
                </span>

                <button
                    class="heart"
                    onclick="toggleWishlist(this, 'Luxury Cream Blazer')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85"
                    alt="Luxury Cream Blazer">

            </div>

            <div class="product-info">

                <h3>
                    Luxury Cream Blazer
                </h3>

                <p>
                    Women's Collection
                </p>

                <div class="price">

                    <strong>
                        $215
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Luxury Cream Blazer',215)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Urban Street Jacket"
            data-category="unisex jacket">

            <div class="product-image">

                <span class="badge">
                    LIMITED
                </span>

                <button
                    class="heart"
                    onclick="toggleWishlist(this, 'Urban Street Jacket')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85"
                    alt="Urban Street Jacket">

            </div>

            <div class="product-info">

                <h3>
                    Urban Street Jacket
                </h3>

                <p>
                    Unisex Collection
                </p>

                <div class="price">

                    <strong>
                        $175
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Urban Street Jacket',175)">

                        Add +

                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     COLLECTION
========================= -->

<section
    class="collection-banner"
    id="collections">

    <div class="collection-content">

        <small>
            THE SIGNATURE COLLECTION
        </small>

        <h2>
            Couture<br>
            After Dark
        </h2>

        <p>
            Designed for nights that deserve to be remembered.
            Discover rich textures, dramatic silhouettes and
            sophisticated statement pieces.
        </p>

        <button
            class="shop-button"
            onclick="scrollToSection('new')">

            Explore Collection →

        </button>

    </div>

</section>


<!-- =========================
     WOMEN / MEN
========================= -->

<section class="split-fashion">

    <div
        class="fashion-box"
        id="women">

        <img
            src="https://images.unsplash.com/photo-1496217590455-aa63a8350eea?auto=format&fit=crop&w=1000&q=85"
            alt="Women's fashion">

        <div class="fashion-overlay">

            <h2>
                For Her
            </h2>

            <p>
                Elegant. Fearless. Unforgettable.
            </p>

            <button
                class="shop-button"
                onclick="scrollToSection('new')">

                Shop Women →

            </button>

        </div>

    </div>


    <div
        class="fashion-box"
        id="men">

        <img
            src="https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=1000&q=85"
            alt="Men's fashion">

        <div class="fashion-overlay">

            <h2>
                For Him
            </h2>

            <p>
                Sharp tailoring. Modern confidence.
            </p>

            <button
                class="shop-button"
                onclick="scrollToSection('new')">

                Shop Men →

            </button>

        </div>

    </div>

</section>


<!-- =========================
     SHOES & ACCESSORIES
========================= -->

<section
    class="products"
    id="shoes">

    <div class="section-heading">

        <div class="small-title">
            Complete The Look
        </div>

        <h2>
            Shoes & Accessories
        </h2>

    </div>

    <div class="product-grid">

        <div
            class="product-card"
            data-name="Pink Statement Heels"
            data-category="shoes women">

            <div class="product-image">

                <span class="badge">
                    HOT
                </span>

                <button
                    class="heart"
                    onclick="toggleWishlist(this,'Pink Statement Heels')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=800&q=85"
                    alt="Pink Statement Heels">

            </div>

            <div class="product-info">

                <h3>
                    Pink Statement Heels
                </h3>

                <p>
                    Women's Shoes
                </p>

                <div class="price">

                    <strong>
                        $149
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Pink Statement Heels',149)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            id="accessories"
            data-name="Luxury Leather Bag"
            data-category="accessories bag">

            <div class="product-image">

                <button
                    class="heart"
                    onclick="toggleWishlist(this,'Luxury Leather Bag')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=85"
                    alt="Luxury Leather Bag">

            </div>

            <div class="product-info">

                <h3>
                    Luxury Leather Bag
                </h3>

                <p>
                    Accessories
                </p>

                <div class="price">

                    <strong>
                        $249
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Luxury Leather Bag',249)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Gold Fashion Watch"
            data-category="accessories watch">

            <div class="product-image">

                <button
                    class="heart"
                    onclick="toggleWishlist(this,'Gold Fashion Watch')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=800&q=85"
                    alt="Gold Fashion Watch">

            </div>

            <div class="product-info">

                <h3>
                    Gold Fashion Watch
                </h3>

                <p>
                    Accessories
                </p>

                <div class="price">

                    <strong>
                        $199
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Gold Fashion Watch',199)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Golden Jewelry Set"
            data-category="accessories jewelry">

            <div class="product-image">

                <button
                    class="heart"
                    onclick="toggleWishlist(this,'Golden Jewelry Set')">

                    ♡

                </button>

                <img
                    src="https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=800&q=85"
                    alt="Golden Jewelry Set">

            </div>

            <div class="product-info">

                <h3>
                    Golden Jewelry Set
                </h3>

                <p>
                    Accessories
                </p>

                <div class="price">

                    <strong>
                        $129
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Golden Jewelry Set',129)">

                        Add +

                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     PERFUME
========================= -->

<section
    class="perfume"
    id="perfumes">

    <div class="perfume-inner">

        <div class="perfume-image">

            <img
                src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=1000&q=85"
                alt="Kcee's Couture perfume">

        </div>

        <div class="perfume-text">

            <small>
                THE COUTURE SCENT
            </small>

            <h2>
                Wear your<br>
                signature scent.
            </h2>

            <p>
                Introducing the Kcee's Couture fragrance collection.
                Elegant notes of rose, amber, vanilla and exotic
                woods designed to leave an unforgettable impression.
            </p>

            <button
                class="shop-button"
                onclick="addToCart('Kcee Signature Perfume',95)">

                Shop Perfume — $95

            </button>

        </div>

    </div>

</section>


<!-- =========================
     KIDS
========================= -->

<section
    class="products"
    id="kids">

    <div class="section-heading">

        <div class="small-title">
            Little Icons
        </div>

        <h2>
            Kids Collection
        </h2>

        <p>
            Big personality. Tiny wardrobes.
        </p>

    </div>

    <div class="product-grid">

        <div
            class="product-card"
            data-name="Mini Fashion Set"
            data-category="kids">

            <div class="product-image">

                <img
                    src="https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=800&q=85"
                    alt="Mini Fashion Set">

            </div>

            <div class="product-info">

                <h3>
                    Mini Fashion Set
                </h3>

                <p>
                    Kids Collection
                </p>

                <div class="price">

                    <strong>
                        $79
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Mini Fashion Set',79)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Little Explorer Outfit"
            data-category="kids">

            <div class="product-image">

                <img
                    src="https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=800&q=85"
                    alt="Little Explorer Outfit">

            </div>

            <div class="product-info">

                <h3>
                    Little Explorer Outfit
                </h3>

                <p>
                    Kids Collection
                </p>

                <div class="price">

                    <strong>
                        $69
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Little Explorer Outfit',69)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Classic Kids Denim"
            data-category="kids denim">

            <div class="product-image">

                <img
                    src="https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=800&q=85"
                    alt="Classic Kids Denim">

            </div>

            <div class="product-info">

                <h3>
                    Classic Kids Denim
                </h3>

                <p>
                    Kids Collection
                </p>

                <div class="price">

                    <strong>
                        $59
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Classic Kids Denim',59)">

                        Add +

                    </button>

                </div>

            </div>

        </div>


        <div
            class="product-card"
            data-name="Weekend Mini Look"
            data-category="kids">

            <div class="product-image">

                <img
                    src="https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=800&q=85"
                    alt="Weekend Mini Look">

            </div>

            <div class="product-info">

                <h3>
                    Weekend Mini Look
                </h3>

                <p>
                    Kids Collection
                </p>

                <div class="price">

                    <strong>
                        $65
                    </strong>

                    <button
                        class="add-cart"
                        onclick="addToCart('Weekend Mini Look',65)">

                        Add +

                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     TESTIMONIALS
========================= -->

<section class="testimonials">

    <div class="section-heading">

        <div class="small-title">
            Our Community
        </div>

        <h2>
            Styled By Kcee
        </h2>

    </div>

    <div class="testimonial-grid">

        <div class="testimonial">

            <div class="stars">
                ★★★★★
            </div>

            <p>
                "The quality is incredible. I wore my Kcee's
                dress to an event and received compliments all night!"
            </p>

            <div class="customer">

                <img
                    src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                    alt="Customer">

                <strong>
                    Amara
                </strong>

            </div>

        </div>


        <div class="testimonial">

            <div class="stars">
                ★★★★★
            </div>

            <p>
                "The men's collection is exactly my style.
                Modern, clean and incredibly well made."
            </p>

            <div class="customer">

                <img
                    src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80"
                    alt="Customer">

                <strong>
                    Daniel
                </strong>

            </div>

        </div>


        <div class="testimonial">

            <div class="stars">
                ★★★★★
            </div>

            <p>
                "My favorite part is the attention to detail.
                Everything feels luxurious from the packaging to the clothes."
            </p>

            <div class="customer">

                <img
                    src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80"
                    alt="Customer">

                <strong>
                    Sofia
                </strong>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     NEWSLETTER
========================= -->

<section class="newsletter">

    <h2>
        Join the Couture Club ✨
    </h2>

    <p>
        Get first access to new drops, exclusive collections
        and private fashion events.
    </p>

    <form
        class="newsletter-form"
        onsubmit="subscribe(event)">

        <input
            type="email"
            placeholder="Enter your email address"
            required>

        <button>
            Subscribe
        </button>

    </form>

</section>


<!-- =========================
     FOOTER
========================= -->

<footer>

    <div class="footer-grid">

        <div class="footer-brand">

            <h2>
                Kcee's <span>Couture</span>
            </h2>

            <p>
                Fashion for those who refuse to blend in.
                Discover clothing, shoes, accessories and
                fragrances curated for your most confident self.
            </p>

            <div class="socials">

                <a href="#" aria-label="Instagram">
                    ◎
                </a>

                <a href="#" aria-label="Facebook">
                    f
                </a>

                <a href="#" aria-label="TikTok">
                    ♪
                </a>

                <a href="#" aria-label="Pinterest">
                    P
                </a>

            </div>

        </div>


        <div>

            <h3>
                Shop
            </h3>

            <ul>

                <li>
                    <a href="#new">
                        New Arrivals
                    </a>
                </li>

                <li>
                    <a href="#collections">
                        Collections
                    </a>
                </li>

                <li>
                    <a href="#women">
                        Women
                    </a>
                </li>

                <li>
                    <a href="#men">
                        Men
                    </a>
                </li>

                <li>
                    <a href="#kids">
                        Kids
                    </a>
                </li>

            </ul>

        </div>


        <div>

            <h3>
                Categories
            </h3>

            <ul>

                <li>
                    <a href="#shoes">
                        Shoes
                    </a>
                </li>

                <li>
                    <a href="#accessories">
                        Accessories
                    </a>
                </li>

                <li>
                    <a href="#perfumes">
                        Perfumes
                    </a>
                </li>

            </ul>

        </div>


        <div>

            <h3>
                Help
            </h3>

            <ul>

                <li>
                    <a href="#">
                        Contact Us
                    </a>
                </li>

                <li>
                    <a href="#">
                        Shipping
                    </a>
                </li>

                <li>
                    <a href="#">
                        Returns
                    </a>
                </li>

                <li>
                    <a href="#">
                        Size Guide
                    </a>
                </li>

                <li>
                    <a href="#">
                        Privacy
                    </a>
                </li>

            </ul>

        </div>

    </div>

    <div class="copyright">

        © 2026 Kcee's Couture.
        All rights reserved.
        &nbsp; • &nbsp;
        Made with ✨ for fashion lovers.

    </div>

</footer>


<!-- =========================
     CART
========================= -->

<div
    class="cart-panel"
    id="cartPanel">

    <div class="cart-header">

        <h2>
            🛍️ Your Bag
        </h2>

        <button
            class="close-cart"
            onclick="closeCart()">

            ×

        </button>

    </div>

    <div id="cartItems">

        <p style="color:#999;">
            Your shopping bag is empty.
        </p>

    </div>

    <div class="cart-total">

        <span>
            Total
        </span>

        <span id="cartTotal">
            $0.00
        </span>

    </div>

    <button
        class="checkout"
        onclick="checkout()">

        Proceed to Checkout →

    </button>

</div>


<!-- =========================
     SEARCH
========================= -->

<div
    class="search-box"
    id="searchBox">

    <div class="search-content">

        <div class="search-top">

            <h2>
                Search Kcee's Couture
            </h2>

            <button
                class="search-close"
                onclick="closeSearch()">

                ×

            </button>

        </div>

        <input
            id="searchInput"
            type="text"
            placeholder="Search dresses, shoes, perfumes..."
            oninput="searchProducts()">

        <div
            class="search-results"
            id="searchResults">

            <p style="color:#999;">
                Start typing to search products...
            </p>

        </div>

    </div>

</div>


<!-- =========================
     CHECKOUT MODAL
========================= -->

<div
    class="modal"
    id="checkoutModal">

    <div class="modal-card">

        <h2>
            Checkout ✨
        </h2>

        <p>
            This is a demonstration checkout for Kcee's Couture.
            No real payment will be processed.
        </p>

        <div class="modal-actions">

            <button
                class="cancel-btn"
                onclick="closeCheckout()">

                Continue Shopping

            </button>

            <button
                class="confirm-btn"
                onclick="completeCheckout()">

                Place Demo Order

            </button>

        </div>

    </div>

</div>


<!-- =========================
     TOAST
========================= -->

<div
    class="toast"
    id="toast">
</div>


<script>

/* =========================
   CART
========================= */

let cart = [];

function addToCart(name, price) {

    const existing = cart.find(
        item => item.name === name
    );

    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            name: name,
            price: price,
            quantity: 1
        });

    }

    updateCart();

    showToast(
        name + " added to your bag 🛍️"
    );

}


/* =========================
   UPDATE CART
========================= */

function updateCart() {

    const cartItems =
        document.getElementById("cartItems");

    const cartTotal =
        document.getElementById("cartTotal");

    const cartCount =
        document.getElementById("cartCount");

    if (cart.length === 0) {

        cartItems.innerHTML = `
            <p style="color:#999;">
                Your shopping bag is empty.
            </p>
        `;

        cartTotal.innerText = "$0.00";
        cartCount.innerText = "0";

        return;
    }

    let total = 0;
    let itemCount = 0;

    cartItems.innerHTML = "";

    cart.forEach((item, index) => {

        total += item.price * item.quantity;
        itemCount += item.quantity;

        cartItems.innerHTML += `

            <div class="cart-item">

                <div>

                    <div class="cart-item-name">
                        ${item.name}
                    </div>

                    <div class="cart-item-price">
                        $${item.price.toFixed(2)}
                    </div>

                    <div class="quantity">

                        <button
                            onclick="changeQuantity(${index}, -1)">
                            −
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            onclick="changeQuantity(${index}, 1)">
                            +
                        </button>

                        <button
                            class="remove-item"
                            onclick="removeCart(${index})">

                            Remove

                        </button>

                    </div>

                </div>

                <strong>
                    $${(
                        item.price *
                        item.quantity
                    ).toFixed(2)}
                </strong>

            </div>

        `;

    });

    cartTotal.innerText =
        "$" + total.toFixed(2);

    cartCount.innerText =
        itemCount;

}


/* =========================
   CHANGE QUANTITY
========================= */

function changeQuantity(index, amount) {

    cart[index].quantity += amount;

    if (cart[index].quantity <= 0) {

        cart.splice(index, 1);

    }

    updateCart();

}


/* =========================
   REMOVE
========================= */

function removeCart(index) {

    const name = cart[index].name;

    cart.splice(index, 1);

    updateCart();

    showToast(
        name + " removed from your bag."
    );

}


/* =========================
   OPEN CART
========================= */

function openCart() {

    document
        .getElementById("cartPanel")
        .classList.add("open");

}


/* =========================
   CLOSE CART
========================= */

function closeCart() {

    document
        .getElementById("cartPanel")
        .classList.remove("open");

}


/* =========================
   CHECKOUT
========================= */

function checkout() {

    if (cart.length === 0) {

        showToast(
            "Your bag is empty."
        );

        return;
    }

    document
        .getElementById("checkoutModal")
        .classList.add("active");

}


/* =========================
   CLOSE CHECKOUT
========================= */

function closeCheckout() {

    document
        .getElementById("checkoutModal")
        .classList.remove("active");

}


/* =========================
   COMPLETE DEMO ORDER
========================= */

function completeCheckout() {

    cart = [];

    updateCart();

    closeCheckout();

    closeCart();

    showToast(
        "Demo order placed successfully! ✨"
    );

}


/* =========================
   SEARCH
========================= */

function openSearch() {

    document
        .getElementById("searchBox")
        .classList.add("active");

    setTimeout(() => {

        document
            .getElementById("searchInput")
            .focus();

    }, 100);

}


function closeSearch() {

    document
        .getElementById("searchBox")
        .classList.remove("active");

}


function searchProducts() {

    const query =
        document
            .getElementById("searchInput")
            .value
            .toLowerCase()
            .trim();

    const results =
        document.getElementById("searchResults");

    const products =
        document.querySelectorAll(
            ".product-card"
        );

    if (!query) {

        results.innerHTML = `
            <p style="color:#999;">
                Start typing to search products...
            </p>
        `;

        return;
    }

    let matches = [];

    products.forEach(product => {

        const name =
            product.dataset.name || "";

        const category =
            product.dataset.category || "";

        if (
            name
                .toLowerCase()
                .includes(query)
            ||
            category
                .toLowerCase()
                .includes(query)
        ) {

            const price =
                product
                    .querySelector(".price strong")
                    ?.innerText || "";

            matches.push({
                name: name,
                price: price
            });

        }

    });

    if (matches.length === 0) {

        results.innerHTML = `
            <p style="color:#999;">
                No products found.
            </p>
        `;

        return;
    }

    results.innerHTML =
        matches.map(item => `

            <div class="search-result">

                <div>

                    <strong>
                        ${item.name}
                    </strong>

                    <small>
                        ${item.price}
                    </small>

                </div>

                <button
                    onclick="findProduct('${item.name}')">

                    View

                </button>

            </div>

        `).join("");

}


function findProduct(name) {

    closeSearch();

    const product =
        [...document.querySelectorAll(".product-card")]
        .find(
            card =>
                card.dataset.name === name
        );

    if (product) {

        product.scrollIntoView({
            behavior: "smooth",
            block: "center"
        });

        product.style.outline =
            "4px solid #ff3d81";

        setTimeout(() => {

            product.style.outline =
                "none";

        }, 2000);

    }

}


/* =========================
   WISHLIST
========================= */

let wishlist = [];

function toggleWishlist(button, name) {

    if (wishlist.includes(name)) {

        wishlist =
            wishlist.filter(
                item => item !== name
            );

        button.classList.remove("liked");

        button.innerText = "♡";

        showToast(
            name + " removed from wishlist."
        );

    } else {

        wishlist.push(name);

        button.classList.add("liked");

        button.innerText = "♥";

        showToast(
            name + " added to wishlist ♥"
        );

    }

    document
        .getElementById("wishlistCount")
        .innerText = wishlist.length;

}


function showWishlist() {

    if (wishlist.length === 0) {

        showToast(
            "Your wishlist is empty."
        );

        return;
    }

    showToast(
        wishlist.length +
        " item(s) in your wishlist ♥"
    );

}


/* =========================
   MOBILE MENU
========================= */

function toggleMobileMenu() {

    document
        .getElementById("mobileMenu")
        .classList.toggle("active");

}


/* =========================
   SCROLL
========================= */

function scrollToSection(id) {

    const section =
        document.getElementById(id);

    if (section) {

        section.scrollIntoView({
            behavior: "smooth"
        });

    }

}


/* =========================
   TOAST
========================= */

let toastTimer;

function showToast(message) {

    const toast =
        document.getElementById("toast");

    toast.innerText = message;

    toast.classList.add("show");

    clearTimeout(toastTimer);

    toastTimer =
        setTimeout(() => {

            toast.classList.remove("show");

        }, 3000);

}


/* =========================
   NEWSLETTER
========================= */

function subscribe(event) {

    event.preventDefault();

    showToast(
        "Welcome to the Couture Club! ✨"
    );

    event.target.reset();

}


/* =========================
   ESCAPE KEY
========================= */

document.addEventListener(
    "keydown",
    function(event) {

        if (event.key === "Escape") {

            closeSearch();

            closeCart();

            closeCheckout();

        }

    }
);


/* =========================
   CLOSE SEARCH BACKDROP
========================= */

document
    .getElementById("searchBox")
    .addEventListener(
        "click",
        function(event) {

            if (
                event.target === this
            ) {

                closeSearch();

            }

        }
    );


/* =========================
   SCROLL REVEAL
========================= */

const revealElements =
    document.querySelectorAll(
        ".product-card, .category, .fashion-box, .testimonial"
    );

const observer =
    new IntersectionObserver(
        entries => {

            entries.forEach(entry => {

                if (entry.isIntersecting) {

                    entry.target.style.opacity =
                        "1";

                    entry.target.style.transform =
                        "translateY(0)";

                }

            });

        },
        {
            threshold: .1
        }
    );


revealElements.forEach(element => {

    element.style.opacity = "0";

    element.style.transform =
        "translateY(30px)";

    element.style.transition =
        "opacity .8s ease, transform .8s ease";

    observer.observe(element);

});


/* =========================
   INITIAL CART
========================= */

updateCart();

</script>

</body>
</html>
```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Kcee's Couture | Fashion & Luxury</title>

<style>

@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap');

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:'Poppins',sans-serif;
    background:#fff8fb;
    color:#21151b;
}

/* ================================
   VARIABLES
================================ */

:root{
    --pink:#ff3d81;
    --hotpink:#ff0f6b;
    --purple:#7928ca;
    --orange:#ff8a00;
    --yellow:#ffd166;
    --cream:#fff4e6;
    --dark:#21151b;
    --light:#fff8fb;
    --green:#00a878;
}

/* ================================
   TOP ANNOUNCEMENT
================================ */

.announcement{
    background:linear-gradient(90deg,#ff0f6b,#7928ca,#ff8a00);
    color:white;
    text-align:center;
    padding:10px;
    font-size:13px;
    letter-spacing:1px;
    animation:gradientMove 8s infinite linear;
    background-size:300% 300%;
}

/* ================================
   NAVIGATION
================================ */

header{
    position:sticky;
    top:0;
    z-index:999;
    background:#ffffffee;
    backdrop-filter:blur(15px);
    border-bottom:1px solid #eee;
}

.navbar{
    max-width:1400px;
    margin:auto;
    height:85px;
    padding:0 30px;
    display:flex;
    align-items:center;
    justify-content:space-between;
}

.logo{
    font-family:'Playfair Display',serif;
    font-size:30px;
    font-weight:700;
    color:var(--dark);
}

.logo span{
    color:var(--pink);
}

.nav-menu{
    display:flex;
    list-style:none;
    gap:25px;
}

.nav-menu a{
    text-decoration:none;
    color:#21151b;
    font-size:14px;
    font-weight:500;
    position:relative;
    transition:.3s;
}

.nav-menu a:hover{
    color:var(--pink);
}

.nav-menu a::after{
    content:"";
    position:absolute;
    width:0;
    height:2px;
    background:var(--pink);
    left:0;
    bottom:-7px;
    transition:.3s;
}

.nav-menu a:hover::after{
    width:100%;
}

.nav-icons{
    display:flex;
    gap:15px;
}

.nav-icon{
    width:42px;
    height:42px;
    border-radius:50%;
    background:#fff0f5;
    border:none;
    cursor:pointer;
    font-size:18px;
    transition:.3s;
}

.nav-icon:hover{
    background:var(--pink);
    color:white;
    transform:translateY(-4px);
}

/* ================================
   HERO
================================ */

.hero{
    min-height:720px;
    display:grid;
    grid-template-columns:45% 55%;
    overflow:hidden;
    background:
        linear-gradient(110deg,#fff0f5,#ffe3ef,#fff);
}

.hero-text{
    padding:100px 60px 80px 9%;
    display:flex;
    flex-direction:column;
    justify-content:center;
    animation:slideLeft 1s ease;
}

.small-title{
    color:var(--pink);
    font-size:14px;
    letter-spacing:4px;
    text-transform:uppercase;
    font-weight:600;
    margin-bottom:20px;
}

.hero h1{
    font-family:'Playfair Display',serif;
    font-size:75px;
    line-height:1;
    margin-bottom:25px;
}

.hero h1 span{
    color:var(--pink);
    font-style:italic;
}

.hero p{
    color:#6d5961;
    max-width:500px;
    line-height:1.8;
    margin-bottom:35px;
}

.shop-button{
    width:max-content;
    padding:16px 32px;
    border:none;
    border-radius:50px;
    background:linear-gradient(90deg,#ff0f6b,#7928ca);
    color:white;
    font-weight:600;
    cursor:pointer;
    box-shadow:0 15px 30px #ff0f6b35;
    transition:.4s;
}

.shop-button:hover{
    transform:translateY(-5px) scale(1.03);
    box-shadow:0 20px 40px #ff0f6b50;
}

.hero-image{
    position:relative;
    min-height:650px;
    background:
        linear-gradient(180deg,#ff8a0020,#ff0f6b20),
        url("https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1400&q=85")
        center/cover;
}

.floating-tag{
    position:absolute;
    background:white;
    padding:18px 25px;
    border-radius:18px;
    box-shadow:0 15px 40px #0002;
    animation:float 4s ease-in-out infinite;
}

.tag1{
    top:15%;
    left:8%;
}

.tag2{
    bottom:15%;
    right:8%;
    animation-delay:1s;
}

.floating-tag strong{
    display:block;
    font-size:18px;
}

.floating-tag small{
    color:#888;
}

/* ================================
   CATEGORY STRIP
================================ */

.categories{
    max-width:1300px;
    margin:70px auto;
    padding:0 25px;
}

.section-heading{
    text-align:center;
    margin-bottom:40px;
}

.section-heading h2{
    font-family:'Playfair Display',serif;
    font-size:45px;
}

.section-heading p{
    color:#888;
    margin-top:8px;
}

.category-grid{
    display:grid;
    grid-template-columns:repeat(7,1fr);
    gap:15px;
}

.category{
    height:170px;
    border-radius:25px;
    overflow:hidden;
    position:relative;
    cursor:pointer;
    transition:.4s;
}

.category:hover{
    transform:translateY(-10px);
}

.category img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.category:hover img{
    transform:scale(1.12);
}

.category::after{
    content:"";
    position:absolute;
    inset:0;
    background:linear-gradient(transparent,#000b);
}

.category-name{
    position:absolute;
    bottom:18px;
    left:18px;
    color:white;
    font-weight:600;
    z-index:2;
}

/* ================================
   FEATURED PRODUCTS
================================ */

.products{
    max-width:1350px;
    margin:100px auto;
    padding:0 25px;
}

.product-grid{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:25px;
}

.product-card{
    background:white;
    border-radius:25px;
    overflow:hidden;
    box-shadow:0 10px 35px #0000000b;
    transition:.4s;
    position:relative;
}

.product-card:hover{
    transform:translateY(-10px);
    box-shadow:0 25px 50px #0002;
}

.product-image{
    height:390px;
    position:relative;
    overflow:hidden;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.6s;
}

.product-card:hover .product-image img{
    transform:scale(1.08);
}

.badge{
    position:absolute;
    top:15px;
    left:15px;
    padding:7px 12px;
    border-radius:30px;
    background:var(--pink);
    color:white;
    font-size:11px;
    font-weight:600;
    z-index:3;
}

.heart{
    position:absolute;
    top:15px;
    right:15px;
    width:40px;
    height:40px;
    border-radius:50%;
    background:white;
    border:none;
    cursor:pointer;
    font-size:18px;
    z-index:3;
    transition:.3s;
}

.heart:hover{
    background:#ffebf2;
    color:red;
    transform:scale(1.15);
}

.product-info{
    padding:20px;
}

.product-info h3{
    font-family:'Playfair Display',serif;
    font-size:20px;
}

.product-info p{
    color:#999;
    font-size:13px;
    margin:6px 0;
}

.price{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-top:15px;
}

.price strong{
    font-size:18px;
}

.add-cart{
    border:none;
    background:#21151b;
    color:white;
    padding:9px 14px;
    border-radius:30px;
    cursor:pointer;
    transition:.3s;
}

.add-cart:hover{
    background:var(--pink);
    transform:scale(1.05);
}

/* ================================
   COLLECTION BANNER
================================ */

.collection-banner{
    max-width:1350px;
    margin:100px auto;
    min-height:520px;
    border-radius:35px;
    overflow:hidden;
    display:flex;
    align-items:center;
    padding:70px;
    color:white;
    background:
        linear-gradient(90deg,#2d0b32dd,#2d0b3260),
        url("https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1600&q=85")
        center/cover;
}

.collection-content{
    max-width:550px;
}

.collection-content small{
    letter-spacing:4px;
    color:#ffd166;
}

.collection-content h2{
    font-family:'Playfair Display',serif;
    font-size:65px;
    line-height:1.05;
    margin:15px 0;
}

.collection-content p{
    line-height:1.8;
    color:#ddd;
    margin-bottom:30px;
}

/* ================================
   SPLIT FASHION
================================ */

.split-fashion{
    max-width:1350px;
    margin:100px auto;
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:25px;
}

.fashion-box{
    min-height:500px;
    border-radius:30px;
    overflow:hidden;
    position:relative;
}

.fashion-box img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.7s;
}

.fashion-box:hover img{
    transform:scale(1.08);
}

.fashion-overlay{
    position:absolute;
    inset:0;
    background:linear-gradient(transparent,#000a);
    display:flex;
    flex-direction:column;
    justify-content:flex-end;
    padding:40px;
    color:white;
}

.fashion-overlay h2{
    font-family:'Playfair Display',serif;
    font-size:45px;
}

.fashion-overlay p{
    margin:8px 0 20px;
    color:#ddd;
}

/* ================================
   PERFUME SECTION
================================ */

.perfume{
    padding:100px 30px;
    background:
        radial-gradient(circle at 20% 50%,#ff3d8130,transparent 30%),
        radial-gradient(circle at 80% 30%,#7928ca35,transparent 30%),
        #fff0f5;
}

.perfume-inner{
    max-width:1300px;
    margin:auto;
    display:grid;
    grid-template-columns:1fr 1fr;
    align-items:center;
    gap:70px;
}

.perfume-image{
    height:550px;
    border-radius:35px;
    overflow:hidden;
}

.perfume-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.perfume-text small{
    color:var(--pink);
    letter-spacing:4px;
}

.perfume-text h2{
    font-family:'Playfair Display',serif;
    font-size:60px;
    line-height:1.1;
    margin:15px 0 25px;
}

.perfume-text p{
    line-height:1.9;
    color:#6e5c63;
    margin-bottom:30px;
}

/* ================================
   TESTIMONIALS
================================ */

.testimonials{
    max-width:1200px;
    margin:100px auto;
    padding:0 25px;
}

.testimonial-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:25px;
}

.testimonial{
    background:white;
    padding:30px;
    border-radius:25px;
    box-shadow:0 10px 30px #0000000a;
    transition:.3s;
}

.testimonial:hover{
    transform:translateY(-8px);
}

.stars{
    color:#ffad00;
    margin-bottom:15px;
}

.testimonial p{
    color:#666;
    line-height:1.8;
    font-size:14px;
}

.customer{
    display:flex;
    align-items:center;
    gap:12px;
    margin-top:20px;
}

.customer img{
    width:45px;
    height:45px;
    border-radius:50%;
    object-fit:cover;
}

/* ================================
   NEWSLETTER
================================ */

.newsletter{
    margin-top:80px;
    padding:80px 25px;
    text-align:center;
    color:white;
    background:linear-gradient(110deg,#ff0f6b,#7928ca,#ff8a00);
    background-size:300%;
    animation:gradientMove 8s infinite linear;
}

.newsletter h2{
    font-family:'Playfair Display',serif;
    font-size:48px;
}

.newsletter p{
    margin:12px 0 30px;
    color:#eee;
}

.newsletter-form{
    display:flex;
    max-width:550px;
    margin:auto;
    background:white;
    padding:6px;
    border-radius:50px;
}

.newsletter-form input{
    flex:1;
    border:none;
    outline:none;
    padding:15px 20px;
    border-radius:50px;
}

.newsletter-form button{
    border:none;
    border-radius:50px;
    padding:0 25px;
    background:#21151b;
    color:white;
    cursor:pointer;
}

/* ================================
   FOOTER
================================ */

footer{
    background:#1b1116;
    color:white;
    padding:70px 30px 30px;
}

.footer-grid{
    max-width:1300px;
    margin:auto;
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:50px;
}

.footer-brand h2{
    font-family:'Playfair Display',serif;
    font-size:32px;
}

.footer-brand h2 span{
    color:var(--pink);
}

.footer-brand p{
    color:#aaa;
    line-height:1.8;
    margin-top:15px;
    max-width:350px;
}

footer h3{
    margin-bottom:18px;
}

footer ul{
    list-style:none;
}

footer li{
    margin:10px 0;
}

footer a{
    color:#aaa;
    text-decoration:none;
    transition:.3s;
}

footer a:hover{
    color:white;
}

.copyright{
    text-align:center;
    color:#777;
    border-top:1px solid #ffffff15;
    margin-top:50px;
    padding-top:25px;
}

/* ================================
   SHOPPING CART
================================ */

.cart-panel{
    position:fixed;
    top:0;
    right:-420px;
    width:400px;
    height:100vh;
    background:white;
    z-index:2000;
    box-shadow:-15px 0 50px #0002;
    padding:30px;
    transition:.5s;
}

.cart-panel.open{
    right:0;
}

.cart-header{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-bottom:30px;
}

.close-cart{
    border:none;
    background:#f5f5f5;
    width:40px;
    height:40px;
    border-radius:50%;
    cursor:pointer;
    font-size:20px;
}

.cart-item{
    display:flex;
    justify-content:space-between;
    padding:15px 0;
    border-bottom:1px solid #eee;
}

.cart-total{
    margin-top:30px;
    display:flex;
    justify-content:space-between;
    font-size:20px;
    font-weight:bold;
}

.checkout{
    width:100%;
    padding:15px;
    border:none;
    border-radius:50px;
    background:linear-gradient(90deg,#ff0f6b,#7928ca);
    color:white;
    margin-top:25px;
    cursor:pointer;
}

/* ================================
   SEARCH
================================ */

.search-box{
    position:fixed;
    inset:0;
    background:#00000090;
    z-index:3000;
    display:none;
    align-items:center;
    justify-content:center;
    backdrop-filter:blur(10px);
}

.search-box.active{
    display:flex;
}

.search-content{
    width:90%;
    max-width:700px;
    background:white;
    padding:30px;
    border-radius:25px;
}

.search-content input{
    width:100%;
    padding:20px;
    border:1px solid #ddd;
    border-radius:15px;
    font-size:18px;
    outline:none;
}

/* ================================
   TOAST
================================ */

.toast{
    position:fixed;
    bottom:30px;
    left:50%;
    transform:translateX(-50%) translateY(100px);
    background:#21151b;
    color:white;
    padding:15px 25px;
    border-radius:50px;
    z-index:5000;
    opacity:0;
    transition:.4s;
}

.toast.show{
    opacity:1;
    transform:translateX(-50%) translateY(0);
}

/* ================================
   ANIMATIONS
================================ */

@keyframes slideLeft{
    from{
        opacity:0;
        transform:translateX(-60px);
    }
    to{
        opacity:1;
        transform:translateX(0);
    }
}

@keyframes float{
    0%,100%{
        transform:translateY(0);
    }
    50%{
        transform:translateY(-15px);
    }
}

@keyframes gradientMove{
    0%{
        background-position:0% 50%;
    }
    50%{
        background-position:100% 50%;
    }
    100%{
        background-position:0% 50%;
    }
}

/* ================================
   RESPONSIVE
================================ */

@media(max-width:1100px){

    .nav-menu{
        gap:12px;
    }

    .category-grid{
        grid-template-columns:repeat(4,1fr);
    }

    .product-grid{
        grid-template-columns:repeat(2,1fr);
    }

}

@media(max-width:800px){

    .nav-menu{
        display:none;
    }

    .hero{
        grid-template-columns:1fr;
    }

    .hero-text{
        padding:80px 30px;
    }

    .hero h1{
        font-size:55px;
    }

    .hero-image{
        min-height:500px;
    }

    .category-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .split-fashion,
    .perfume-inner{
        grid-template-columns:1fr;
    }

    .testimonial-grid{
        grid-template-columns:1fr;
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }

}

@media(max-width:550px){

    .navbar{
        padding:0 15px;
    }

    .logo{
        font-size:23px;
    }

    .nav-icon{
        width:36px;
        height:36px;
    }

    .product-grid{
        grid-template-columns:1fr;
    }

    .collection-content h2{
        font-size:45px;
    }

    .perfume-text h2{
        font-size:45px;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }

    .cart-panel{
        width:100%;
        right:-100%;
    }

}

</style>
</head>

<body>


<!-- ====================================
     ANNOUNCEMENT
===================================== -->

<div class="announcement">
    ✨ FREE SHIPPING ON ORDERS OVER $150 &nbsp; • &nbsp;
    NEW SEASON COLLECTION NOW LIVE &nbsp; ✨
</div>


<!-- ====================================
     NAVIGATION
===================================== -->

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

        <button class="nav-icon" onclick="openSearch()">
            🔍
        </button>

        <button class="nav-icon">
            ♡
        </button>

        <button class="nav-icon" onclick="openCart()">
            🛍️
        </button>

    </div>

</nav>

</header>


<!-- ====================================
     HERO
===================================== -->

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

        <button class="shop-button"
                onclick="document.getElementById('new').scrollIntoView()">
            Shop New Arrivals →
        </button>

    </div>


    <div class="hero-image">

        <div class="floating-tag tag1">
            <strong>NEW DROP</strong>
            <small>Autumn '26 Collection</small>
        </div>

        <div class="floating-tag tag2">
            <strong>40+ Styles</strong>
            <small>Just landed ✨</small>
        </div>

    </div>

</section>


<!-- ====================================
     CATEGORIES
===================================== -->

<section class="categories">

    <div class="section-heading">

        <div class="small-title">
            Shop Your Style
        </div>

        <h2>Explore Categories</h2>

        <p>
            Find your next favorite look.
        </p>

    </div>


    <div class="category-grid">

        <div class="category" onclick="showToast('New Arrivals selected')">
            <img src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">New Arrivals</div>
        </div>

        <div class="category" onclick="showToast('Collections selected')">
            <img src="https://images.unsplash.com/photo-1469334031218-e382a71b716b?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">Collections</div>
        </div>

        <div class="category" onclick="showToast('Shoes selected')">
            <img src="https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">Shoes</div>
        </div>

        <div class="category" onclick="showToast('Accessories selected')">
            <img src="https://images.unsplash.com/photo-1611652022419-a9419f74343d?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">Accessories</div>
        </div>

        <div class="category" onclick="showToast('Perfumes selected')">
            <img src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">Perfumes</div>
        </div>

        <div class="category" onclick="showToast('Women collection selected')">
            <img src="https://images.unsplash.com/photo-1485968579580-b6d095142e6e?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">Woman</div>
        </div>

        <div class="category" onclick="showToast('Men & Kids collection selected')">
            <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=600&q=80">
            <div class="category-name">Man & Kids</div>
        </div>

    </div>

</section>


<!-- ====================================
     NEW ARRIVALS
===================================== -->

<section class="products" id="new">

    <div class="section-heading">

        <div class="small-title">
            Just Dropped
        </div>

        <h2>New Arrivals</h2>

        <p>
            Fresh looks. New energy. Your wardrobe's next obsession.
        </p>

    </div>


    <div class="product-grid">


        <!-- PRODUCT 1 -->

        <div class="product-card">

            <div class="product-image">

                <span class="badge">
                    NEW
                </span>

                <button class="heart"
                        onclick="showToast('Added to wishlist ♡')">
                    ♡
                </button>

                <img src="https://images.unsplash.com/photo-1485230895905-ec40ba36b9bc?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Midnight Satin Dress</h3>

                <p>Women's Collection</p>

                <div class="price">

                    <strong>$189</strong>

                    <button class="add-cart"
                            onclick="addToCart('Midnight Satin Dress',189)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <!-- PRODUCT 2 -->

        <div class="product-card">

            <div class="product-image">

                <span class="badge">
                    TRENDING
                </span>

                <button class="heart"
                        onclick="showToast('Added to wishlist ♡')">
                    ♡
                </button>

                <img src="https://images.unsplash.com/photo-1507679799987-c73779587ccf?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Executive Tailored Suit</h3>

                <p>Men's Collection</p>

                <div class="price">

                    <strong>$329</strong>

                    <button class="add-cart"
                            onclick="addToCart('Executive Tailored Suit',329)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <!-- PRODUCT 3 -->

        <div class="product-card">

            <div class="product-image">

                <span class="badge">
                    NEW
                </span>

                <button class="heart"
                        onclick="showToast('Added to wishlist ♡')">
                    ♡
                </button>

                <img src="https://images.unsplash.com/photo-1591369822096-ffd140ec948f?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Luxury Cream Blazer</h3>

                <p>Women's Collection</p>

                <div class="price">

                    <strong>$215</strong>

                    <button class="add-cart"
                            onclick="addToCart('Luxury Cream Blazer',215)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <!-- PRODUCT 4 -->

        <div class="product-card">

            <div class="product-image">

                <span class="badge">
                    LIMITED
                </span>

                <button class="heart"
                        onclick="showToast('Added to wishlist ♡')">
                    ♡
                </button>

                <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Urban Street Jacket</h3>

                <p>Unisex Collection</p>

                <div class="price">

                    <strong>$175</strong>

                    <button class="add-cart"
                            onclick="addToCart('Urban Street Jacket',175)">
                        Add +
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ====================================
     COLLECTION BANNER
===================================== -->

<section class="collection-banner" id="collections">

    <div class="collection-content">

        <small>THE SIGNATURE COLLECTION</small>

        <h2>
            Couture<br>
            After Dark
        </h2>

        <p>
            Designed for nights that deserve to be remembered.
            Discover rich textures, dramatic silhouettes and
            sophisticated statement pieces.
        </p>

        <button class="shop-button">
            Explore Collection →
        </button>

    </div>

</section>


<!-- ====================================
     WOMEN / MEN
===================================== -->

<section class="split-fashion">

    <div class="fashion-box" id="women">

        <img src="https://images.unsplash.com/photo-1496217590455-aa63a8350eea?auto=format&fit=crop&w=1000&q=85">

        <div class="fashion-overlay">

            <h2>For Her</h2>

            <p>
                Elegant. Fearless. Unforgettable.
            </p>

            <button class="shop-button">
                Shop Women →
            </button>

        </div>

    </div>


    <div class="fashion-box" id="men">

        <img src="https://images.unsplash.com/photo-1617137968427-85924c800a22?auto=format&fit=crop&w=1000&q=85">

        <div class="fashion-overlay">

            <h2>For Him</h2>

            <p>
                Sharp tailoring. Modern confidence.
            </p>

            <button class="shop-button">
                Shop Men →
            </button>

        </div>

    </div>

</section>


<!-- ====================================
     SHOES & ACCESSORIES
===================================== -->

<section class="products" id="shoes">

    <div class="section-heading">

        <div class="small-title">
            Complete The Look
        </div>

        <h2>Shoes & Accessories</h2>

    </div>


    <div class="product-grid">

        <div class="product-card">

            <div class="product-image">

                <span class="badge">
                    HOT
                </span>

                <img src="https://images.unsplash.com/photo-1543163521-1bf539c55dd2?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Pink Statement Heels</h3>

                <p>Women's Shoes</p>

                <div class="price">

                    <strong>$149</strong>

                    <button class="add-cart"
                            onclick="addToCart('Pink Statement Heels',149)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <div class="product-card" id="accessories">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Luxury Leather Bag</h3>

                <p>Accessories</p>

                <div class="price">

                    <strong>$249</strong>

                    <button class="add-cart"
                            onclick="addToCart('Luxury Leather Bag',249)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <div class="product-card">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1523779917675-b6ed3a42a561?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Gold Fashion Watch</h3>

                <p>Accessories</p>

                <div class="price">

                    <strong>$199</strong>

                    <button class="add-cart"
                            onclick="addToCart('Gold Fashion Watch',199)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <div class="product-card">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Golden Jewelry Set</h3>

                <p>Accessories</p>

                <div class="price">

                    <strong>$129</strong>

                    <button class="add-cart"
                            onclick="addToCart('Golden Jewelry Set',129)">
                        Add +
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ====================================
     PERFUME
===================================== -->

<section class="perfume" id="perfumes">

    <div class="perfume-inner">

        <div class="perfume-image">

            <img src="https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=1000&q=85">

        </div>

        <div class="perfume-text">

            <small>THE COUTURE SCENT</small>

            <h2>
                Wear your<br>
                signature scent.
            </h2>

            <p>
                Introducing the Kcee's Couture fragrance collection.
                Elegant notes of rose, amber, vanilla and exotic
                woods designed to leave an unforgettable impression.
            </p>

            <button class="shop-button"
                    onclick="addToCart('Kcee Signature Perfume',95)">
                Shop Perfumes — $95
            </button>

        </div>

    </div>

</section>


<!-- ====================================
     KIDS
===================================== -->

<section class="products" id="kids">

    <div class="section-heading">

        <div class="small-title">
            Little Icons
        </div>

        <h2>Kids Collection</h2>

        <p>
            Big personality. Tiny wardrobes.
        </p>

    </div>


    <div class="product-grid">

        <div class="product-card">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1519457431-44ccd64a579b?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Mini Fashion Set</h3>

                <p>Kids Collection</p>

                <div class="price">

                    <strong>$79</strong>

                    <button class="add-cart"
                            onclick="addToCart('Mini Fashion Set',79)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <div class="product-card">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1519238263530-99bdd11df2ea?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Little Explorer Outfit</h3>

                <p>Kids Collection</p>

                <div class="price">

                    <strong>$69</strong>

                    <button class="add-cart"
                            onclick="addToCart('Little Explorer Outfit',69)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <div class="product-card">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Classic Kids Denim</h3>

                <p>Kids Collection</p>

                <div class="price">

                    <strong>$59</strong>

                    <button class="add-cart"
                            onclick="addToCart('Classic Kids Denim',59)">
                        Add +
                    </button>

                </div>

            </div>

        </div>


        <div class="product-card">

            <div class="product-image">

                <img src="https://images.unsplash.com/photo-1503919545889-aef636e10ad4?auto=format&fit=crop&w=800&q=85">

            </div>

            <div class="product-info">

                <h3>Weekend Mini Look</h3>

                <p>Kids Collection</p>

                <div class="price">

                    <strong>$65</strong>

                    <button class="add-cart"
                            onclick="addToCart('Weekend Mini Look',65)">
                        Add +
                    </button>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- ====================================
     TESTIMONIALS
===================================== -->

<section class="testimonials">

    <div class="section-heading">

        <div class="small-title">
            Our Community
        </div>

        <h2>Styled By Kcee's</h2>

    </div>


    <div class="testimonial-grid">

        <div class="testimonial">

            <div class="stars">★★★★★</div>

            <p>
                "The quality is incredible. I wore my Kcee's
                dress to an event and received compliments all night!"
            </p>

            <div class="customer">

                <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

                <strong>Amara</strong>

            </div>

        </div>


        <div class="testimonial">

            <div class="stars">★★★★★</div>

            <p>
                "The men's collection is exactly my style.
                Modern, clean and incredibly well made."
            </p>

            <div class="customer">

                <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80">

                <strong>Daniel</strong>

            </div>

        </div>


        <div class="testimonial">

            <div class="stars">★★★★★</div>

            <p>
                "My favorite part is the attention to detail.
                Everything feels luxurious from the packaging to the clothes."
            </p>

            <div class="customer">

                <img src="https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=100&q=80">

                <strong>Sofia</strong>

            </div>

        </div>

    </div>

</section>


<!-- ====================================
     NEWSLETTER
===================================== -->

<section class="newsletter">

    <h2>Join the Couture Club ✨</h2>

    <p>
        Get first access to new drops, exclusive collections
        and private fashion events.
    </p>

    <form class="newsletter-form"
          onsubmit="subscribe(event)">

        <input
            type="email"
            placeholder="Enter your email address"
            required
        >

        <button>
            Subscribe
        </button>

    </form>

</section>


<!-- ====================================
     FOOTER
===================================== -->

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

        </div>


        <div>

            <h3>Shop</h3>

            <ul>

                <li><a href="#new">New Arrivals</a></li>
                <li><a href="#collections">Collections</a></li>
                <li><a href="#women">Women</a></li>
                <li><a href="#men">Men</a></li>
                <li><a href="#kids">Kids</a></li>

            </ul>

        </div>


        <div>

            <h3>Categories</h3>

            <ul>

                <li><a href="#shoes">Shoes</a></li>
                <li><a href="#accessories">Accessories</a></li>
                <li><a href="#perfumes">Perfumes</a></li>

            </ul>

        </div>


        <div>

            <h3>Help</h3>

            <ul>

                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Shipping</a></li>
                <li><a href="#">Returns</a></li>
                <li><a href="#">Size Guide</a></li>
                <li><a href="#">Privacy</a></li>

            </ul>

        </div>

    </div>


    <div class="copyright">

        © 2026 Kcee's Couture. All rights reserved.
        &nbsp; • &nbsp; Made with ✨ for fashion lovers.

    </div>

</footer>


<!-- ====================================
     CART PANEL
===================================== -->

<div class="cart-panel" id="cartPanel">

    <div class="cart-header">

        <h2>🛍️ Your Bag</h2>

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

        <span>Total</span>

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


<!-- ====================================
     SEARCH
===================================== -->

<div class="search-box" id="searchBox">

    <div class="search-content">

        <button
            onclick="closeSearch()"
            style="float:right;border:none;background:#eee;width:35px;height:35px;border-radius:50%;cursor:pointer;">
            ×
        </button>

        <h2 style="margin-bottom:20px;">
            Search Kcee's Couture
        </h2>

        <input
            type="text"
            placeholder="Search dresses, shoes, perfumes..."
            autofocus
        >

    </div>

</div>


<!-- ====================================
     TOAST
===================================== -->

<div class="toast" id="toast"></div>


<script>

/* =================================
   SHOPPING CART
================================= */

let cart = [];

function addToCart(name, price){

    cart.push({
        name:name,
        price:price
    });

    updateCart();

    showToast(name + " added to your bag 🛍️");

}


function updateCart(){

    const cartItems =
        document.getElementById("cartItems");

    const cartTotal =
        document.getElementById("cartTotal");

    if(cart.length === 0){

        cartItems.innerHTML =
        '<p style="color:#999;">Your shopping bag is empty.</p>';

        cartTotal.innerText = "$0.00";

        return;
    }

    let total = 0;

    cartItems.innerHTML = "";

    cart.forEach((item,index)=>{

        total += item.price;

        cartItems.innerHTML += `

            <div class="cart-item">

                <div>
                    <strong>${item.name}</strong>
                    <br>
                    <small>$${item.price.toFixed(2)}</small>
                </div>

                <button
                    onclick="removeCart(${index})"
                    style="
                    border:none;
                    background:#ffe8ef;
                    color:#ff0f6b;
                    border-radius:20px;
                    padding:5px 10px;
                    cursor:pointer;">
                    Remove
                </button>

            </div>
        `;

    });

    cartTotal.innerText =
        "$" + total.toFixed(2);

}


function removeCart(index){

    cart.splice(index,1);

    updateCart();

    showToast("Item removed from your bag.");

}


function openCart(){

    document
        .getElementById("cartPanel")
        .classList.add("open");

}


function closeCart(){

    document
        .getElementById("cartPanel")
        .classList.remove("open");

}


function checkout(){

    if(cart.length === 0){

        showToast("Your bag is empty.");

        return;
    }

    showToast(
        "Checkout demo opened. No real payment was processed."
    );

}


/* =================================
   SEARCH
================================= */

function openSearch(){

    document
        .getElementById("searchBox")
        .classList.add("active");

}


function closeSearch(){

    document
        .getElementById("searchBox")
        .classList.remove("active");

}


/* =================================
   TOAST MESSAGE
================================= */

function showToast(message){

    const toast =
        document.getElementById("toast");

    toast.innerText = message;

    toast.classList.add("show");

    setTimeout(()=>{

        toast.classList.remove("show");

    },3000);

}


/* =================================
   NEWSLETTER
================================= */

function subscribe(event){

    event.preventDefault();

    showToast(
        "Welcome to the Couture Club! ✨"
    );

    event.target.reset();

}


/* =================================
   ESCAPE KEY
================================= */

document.addEventListener("keydown",function(event){

    if(event.key === "Escape"){

        closeSearch();

        closeCart();

    }

});


/* =================================
   SCROLL REVEAL
================================= */

const revealElements =
    document.querySelectorAll(
        ".product-card, .category, .fashion-box, .testimonial"
    );

const observer =
    new IntersectionObserver(
        entries => {

            entries.forEach(entry => {

                if(entry.isIntersecting){

                    entry.target.style.opacity = "1";
                    entry.target.style.transform = "translateY(0)";

                }

            });

        },
        {
            threshold:0.1
        }
    );


revealElements.forEach(element=>{

    element.style.opacity = "0";
    element.style.transform = "translateY(30px)";
    element.style.transition =
        "opacity .8s ease, transform .8s ease";

    observer.observe(element);

});

</script>

</body>
</html>
```

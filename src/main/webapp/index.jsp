<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MobileStore</title>
    <link rel="stylesheet" href="css/style.css">
    <script src="js/cart.js" defer></script>
</head>
<body>

<header>
    <h1>MobileStore</h1>
    <a href="login.jsp" class="login-btn">Login</a>
</header>

<h2 class="title">Latest Mobiles</h2>

<div class="product-container">

    <!-- iPhone -->
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/51-dI0OmzyL.jpg" class="product-img">
        <h3>iPhone 15</h3>
        <p class="price">₹79,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <!-- Samsung -->
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg" class="product-img">
        <h3>Samsung Galaxy S24 ultra</h3>
        <p class="price">₹69,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <!-- Redmi -->
    <div class="card">
        <img src="https://www.progresif.com/media/catalog/product/cache/a57e14b7b22013b5665a7323ba2dcb64/r/e/redmi_13_pro_midnight_black.png" class="product-img">
        <h3>Redmi Note 13</h3>
        <p class="price">₹41,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <!-- Realme -->
    <div class="card">
        <img src="https://static2.realme.net/images/realme-gt-6/point/m/7.jpg" class="product-img">
        <h3>Realme GT 6</h3>
        <p class="price">₹35,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <!-- iQOO -->
    <div class="card">
        <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg" class="product-img">
        <h3>iQOO Neo 10R</h3>
        <p class="price">₹29,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

</div>

</body>
</html>

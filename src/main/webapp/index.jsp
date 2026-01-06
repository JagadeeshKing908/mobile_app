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
    <div class="auth">
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
    </div>
</header>

<h2 class="title">Latest Mobiles</h2>

<div class="product-container">

    <div class="card">
        <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg">
        <h3>iPhone 15</h3>
        <p class="price">₹79,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg">
        <h3>Samsung Galaxy S24 ultra</h3>
        <p class="price">₹69,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61vFWIksgcL.jpg">
        <h3>Redmi Note 13</h3>
        <p class="price">₹21,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="images/realme-gt.jpg">
        <h3>Realme GT</h3>
        <p class="price">₹25,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="images/iqoo-neo.jpg">
        <h3>iQOO Neo</h3>
        <p class="price">₹29,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="images/oneplus-12.jpg">
        <h3>OnePlus 12</h3>
        <p class="price">₹64,999</p>
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

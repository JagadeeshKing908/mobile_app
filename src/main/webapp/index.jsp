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
        <img src="https://fdn2.gsmarena.com/vv/bigpic/realme-gt6.jpg">
        <h3>Realme GT 6T</h3>
        <p class="price">₹25,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg">
        <h3>iQOO Neo 10R</h3>
        <p class="price">₹29,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>

    <div class="card">
        <img src="https://pdaplaza.ca/wp-content/uploads/2025/10/911f10e96779af19ec91cedffda18a3e-1835699554.jpg">
        <h3>OnePlus 12</h3>
        <p class="price">₹64,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>
     <div class="card">
        <img src="https://multimedia.bbycastatic.ca/multimedia/products/500x500/181/18190/18190260.jpg">
        <h3>pixel 9pro</h3>
        <p class="price">₹64,999</p>
        <div class="qty">
            <button onclick="decrease(this)">−</button>
            <span>0</span>
            <button onclick="increase(this)">+</button>
        </div>
        <button class="buy">Buy Now</button>
    </div>
     <div class="card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtnjiAxtjZU0Ofgp7KyDk1T_f_543KfFIZ7A&s">
        <h3>Iphone 17 pro</h3>
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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mobile Store</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="navbar">
    <h1>Mobile Store</h1>
    <div class="nav-links">
        <button class="nav-btn" onclick="openLogin()">Login</button>
        <button class="nav-btn" onclick="openRegister()">Register</button>
    </div>
</header>

<main>
    <h2 class="heading">Latest Mobiles</h2>

    <section class="products">

        <article class="card">
            <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg" 
                 data-images='["https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg","https://example.com/iphone15-back.jpg"]' 
                 alt="iPhone 15">
            <h3>iPhone 15</h3>
            <p class="price">₹79,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg"
                 data-images='["https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg","https://example.com/samsung-back.jpg"]'
                 alt="Samsung Galaxy S24">
            <h3>Samsung Galaxy S24</h3>
            <p class="price">₹69,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61vFWIksgcL.jpg"
                 data-images='["https://m.media-amazon.com/images/I/61vFWIksgcL.jpg","https://example.com/redmi-back.jpg"]'
                 alt="Redmi Note 13">
            <h3>Redmi Note 13</h3>
            <p class="price">₹24,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>

        <article class="card">
            <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg"
                 data-images='["https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg","https://example.com/iqoo-back.jpg"]'
                 alt="iQOO Neo 10R">
            <h3>iQOO Neo 10R</h3>
            <p class="price">₹34,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>
        
        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61vFWIksgcL.jpg"
                 data-images='["https://m.media-amazon.com/images/I/61vFWIksgcL.jpg","https://example.com/redmi-back.jpg"]'
                 alt="Redmi Note 13">
            <h3>Redmi Note 13</h3>
            <p class="price">₹24,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>

        <article class="card">
            <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg"
                 data-images='["https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg","https://example.com/iqoo-back.jpg"]'
                 alt="iQOO Neo 10R">
            <h3>iQOO Neo 10R</h3>
            <p class="price">₹34,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>
        <article class="card">
            <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg" 
                 data-images='["https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg","https://example.com/iphone15-back.jpg"]' 
                 alt="iPhone 15">
            <h3>iPhone 15</h3>
            <p class="price">₹79,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg"
                 data-images='["https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg","https://example.com/samsung-back.jpg"]'
                 alt="Samsung Galaxy S24">
            <h3>Samsung Galaxy S24</h3>
            <p class="price">₹69,999</p>

            <div class="actions">
                <button>-</button>
                <span>0</span>
                <button>+</button>
            </div>

            <button class="buy-btn" onclick="openLogin()">Buy Now</button>
        </article>

    </section>
</main>

<!-- LOGIN POPUP -->
<div id="loginPopup" class="popup">
    <div class="popup-content">
        <span class="close" onclick="closePopup()">×</span>
        <h2>Login</h2>
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <button class="popup-btn">Login</button>
        <p style="margin-top:10px;">Don't have an account? 
            <button class="popup-link-btn" onclick="openRegister()">Register</button>
        </p>
    </div>
</div>

<!-- REGISTER POPUP -->
<div id="registerPopup" class="popup">
    <div class="popup-content">
        <span class="close" onclick="closePopup()">×</span>
        <h2>Register</h2>
        <input type="text" placeholder="Full Name">
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <button class="popup-btn">Register</button>
    </div>
</div>

<script src="js/script.js"></script>
</body>
</html>

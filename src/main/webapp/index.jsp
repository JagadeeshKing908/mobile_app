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
    <nav>
        <a href="#" onclick="openLogin()">Login</a>
        <a href="#" onclick="openRegister()">Register</a>
    </nav>
</header>

<main>
    <h2 class="heading">Latest Mobiles</h2>

    <section class="products">

        <article class="card">
            <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg">
            <h3>iPhone 15</h3>
            <p class="price">₹79,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg">
            <h3>Samsung Galaxy S24</h3>
            <p class="price">₹69,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61vFWIksgcL.jpg">
            <h3>Redmi Note 13</h3>
            <p class="price">₹24,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg">
            <h3>iQOO Neo 10R</h3>
            <p class="price">₹34,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>
     <article class="card">
            <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg">
            <h3>iPhone 15</h3>
            <p class="price">₹79,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg">
            <h3>Samsung Galaxy S24</h3>
            <p class="price">₹69,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61vFWIksgcL.jpg">
            <h3>Redmi Note 13</h3>
            <p class="price">₹24,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg">
            <h3>iQOO Neo 10R</h3>
            <p class="price">₹34,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
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

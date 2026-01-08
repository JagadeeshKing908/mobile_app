<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Store</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<header class="navbar">
    <h1>Mobile Store</h1>
    <nav>
        <a href="javascript:void(0)" onclick="openLogin()">Login</a>
        <a href="javascript:void(0)" onclick="openRegister()">Register</a>
    </nav>
</header>

<main>
    <h2 class="heading">Latest Mobiles</h2>

    <section class="products">
        <article class="card">
            <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg" alt="iPhone 15">
            <h3>iPhone 15</h3>
            <p class="price">₹79,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>

        <article class="card">
            <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg" alt="Samsung S24">
            <h3>Samsung Galaxy S24</h3>
            <p class="price">₹69,999</p>
            <div class="actions">
                <button>+</button>
                <button>-</button>
            </div>
        </article>
    </section>
</main>

<div id="loginPopup" class="popup-overlay">
    <div class="popup-box">
        <span class="close" onclick="closePopup()">&times;</span>
        <h3>Login</h3>
        <form>
            <input type="email" placeholder="Email" required>
            <input type="password" placeholder="Password" required>
            <input type="submit" value="Login" class="btn-submit">
        </form>
    </div>
</div>

<div id="registerPopup" class="popup-overlay">
    <div class="popup-box">
        <span class="close" onclick="closePopup()">&times;</span>
        <h3>Register</h3>
        <form>
            <input type="text" placeholder="Full Name" required>
            <input type="email" placeholder="Email" required>
            <input type="password" placeholder="Password" required>
            <input type="submit" value="Register" class="btn-submit">
        </form>
    </div>
</div>

<script src="script.js"></script>
</body>
</html>

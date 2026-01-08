<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mobile Store</title>

    <!-- CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- JS -->
    <script src="js/popup.js"></script>
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

    </section>
</main>

<!-- LOGIN POPUP -->
<div id="loginPopup" class="popup">
    <div class="popup-box">
        <span class="close" onclick="closePopup()">×</span>
        <h3>Login</h3>

        <form action="login" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
        </form>
    </div>
</div>

<!-- REGISTER POPUP -->
<div id="registerPopup" class="popup">
    <div class="popup-box">
        <span class="close" onclick="closePopup()">×</span>
        <h3>Register</h3>

        <form action="register" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" placeholder="Confirm Password" required>
            <input type="submit" value="Register">
        </form>
    </div>
</div>

</body>
</html>

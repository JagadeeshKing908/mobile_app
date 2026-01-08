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
        <a href="#" onclick="openModal('loginModal')">Login</a>
        <a href="#" onclick="openModal('registerModal')">Register</a>
    </nav>
</header>

<main>
    <h2 class="heading">Latest Mobiles</h2>

    <section class="products">
        <!-- cards unchanged -->
    </section>
</main>

<!-- LOGIN POPUP -->
<div class="modal" id="loginModal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('loginModal')">&times;</span>
        <h3>Login</h3>

        <form action="login" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</div>

<!-- REGISTER POPUP -->
<div class="modal" id="registerModal">
    <div class="modal-content">
        <span class="close" onclick="closeModal('registerModal')">&times;</span>
        <h3>Register</h3>

        <form action="register" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
            <button type="submit">Register</button>
        </form>
    </div>
</div>

<script>
    function openModal(id) {
        document.getElementById(id).style.display = "block";
    }

    function closeModal(id) {
        document.getElementById(id).style.display = "none";
    }
</script>

</body>
</html>

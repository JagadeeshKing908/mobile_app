<!DOCTYPE html>
<html>
<head>
    <title>Mobile Store</title>
    <link rel="stylesheet" href="css/style.css">
    <script>
        function openModal(id) {
            document.getElementById(id).style.display = 'block';
        }
        function closeModal(id) {
            document.getElementById(id).style.display = 'none';
        }
    </script>
</head>

<body>

<header class="navbar">
    <h1>Mobile Store</h1>
    <nav>
        <a href="#" onclick="openModal('loginModal')">Login</a>
        <a href="#" onclick="openModal('registerModal')">Register</a>
    </nav>
</header>

<% if ("true".equals(request.getParameter("error"))) { %>
<p class="error">Invalid login credentials</p>
<% } %>

<!-- LOGIN MODAL -->
<div class="modal" id="loginModal">
    <div class="modal-content">
        <span onclick="closeModal('loginModal')" class="close">&times;</span>
        <h3>Login</h3>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</div>

<!-- REGISTER MODAL -->
<div class="modal" id="registerModal">
    <div class="modal-content">
        <span onclick="closeModal('registerModal')" class="close">&times;</span>
        <h3>Register</h3>
        <form action="register" method="post">
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Register</button>
        </form>
    </div>
</div>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="javax.servlet.http.*" %>
<%
    String user = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>MobileStore</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script>
        // Check if user is logged in when clicking Buy
        function checkLogin() {
            <% if(user == null){ %>
                var loginModal = new bootstrap.Modal(document.getElementById('loginModal'));
                loginModal.show();
                return false; // prevent default Buy action
            <% } else { %>
                alert("Purchase successful!"); // placeholder
                return true;
            <% } %>
        }
    </script>
</head>
<body>

<header>
    <h1>MobileStore</h1>
    <div class="auth">
        <% if(user == null){ %>
            <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#loginModal">Login</button>
            <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#registerModal">Register</button>
        <% } else { %>
            <span class="text-white">Welcome, <%= user %></span>
            <a href="logout" class="btn btn-danger">Logout</a>
        <% } %>
    </div>
</header>

<div class="container mt-3">
    <% if(request.getParameter("loginSuccess") != null){ %>
        <div class="alert alert-success">Login successful!</div>
    <% } %>
    <% if(request.getParameter("registerSuccess") != null){ %>
        <div class="alert alert-success">Registration successful! You can now login.</div>
    <% } %>
    <% if(request.getParameter("loginError") != null){ %>
        <div class="alert alert-danger">Login failed! Invalid username or password.</div>
    <% } %>
    <% if(request.getParameter("registerError") != null){ %>
        <div class="alert alert-danger">Registration failed! Username may already exist.</div>
    <% } %>
</div>

<h2 class="title">Latest Mobiles</h2>

<div class="product-container">

    <!-- iPhone 15 -->
    <div class="card">
        <img src="https://www.dxomark.com/wp-content/uploads/medias/post-157904/Apple-iPhone-15_-blue_featured-image-packshot-review.jpg">
        <h3>iPhone 15</h3>
        <p class="price">₹79,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- Samsung Galaxy S24 Ultra -->
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61Z+OYjhOoL._AC_UF894,1000_QL80_.jpg">
        <h3>Samsung Galaxy S24 Ultra</h3>
        <p class="price">₹69,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- Redmi Note 13 -->
    <div class="card">
        <img src="https://m.media-amazon.com/images/I/61vFWIksgcL.jpg">
        <h3>Redmi Note 13</h3>
        <p class="price">₹21,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- Realme GT 6T -->
    <div class="card">
        <img src="https://fdn2.gsmarena.com/vv/bigpic/realme-gt6.jpg">
        <h3>Realme GT 6T</h3>
        <p class="price">₹25,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- iQOO Neo 10R -->
    <div class="card">
        <img src="https://i.ebayimg.com/images/g/I~cAAOSwMxxn0yMp/s-l1200.jpg">
        <h3>iQOO Neo 10R</h3>
        <p class="price">₹29,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- OnePlus 12 -->
    <div class="card">
        <img src="https://pdaplaza.ca/wp-content/uploads/2025/10/911f10e96779af19ec91cedffda18a3e-1835699554.jpg">
        <h3>OnePlus 12</h3>
        <p class="price">₹64,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- Pixel 9 Pro -->
    <div class="card">
        <img src="https://multimedia.bbycastatic.ca/multimedia/products/500x500/181/18190/18190260.jpg">
        <h3>Pixel 9 Pro</h3>
        <p class="price">₹74,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

    <!-- iPhone 17 Pro -->
    <div class="card">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtnjiAxtjZU0Ofgp7KyDk1T_f_543KfFIZ7A&s">
        <h3>iPhone 17 Pro</h3>
        <p class="price">₹1,74,999</p>
        <button class="buy btn btn-primary" onclick="return checkLogin()">Buy Now</button>
    </div>

</div>

<!-- LOGIN MODAL -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content p-4">
      <div class="modal-header">
        <h5 class="modal-title">Login</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <form action="login" method="post">
        <div class="modal-body">
          <div class="mb-3">
            <label>Username</label>
            <input type="text" name="username" class="form-control" required>
          </div>
          <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Login</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- REGISTER MODAL -->
<div class="modal fade" id="registerModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content p-4">
      <div class="modal-header">
        <h5 class="modal-title">Register</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <form action="register" method="post">
        <div class="modal-body">
          <div class="mb-3">
            <label>Username</label>
            <input type="text" name="username" class="form-control" required>
          </div>
          <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required>
          </div>
          <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-success">Register</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

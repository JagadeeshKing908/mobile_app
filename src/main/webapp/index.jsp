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
    <script src="js/cart.js" defer></script>
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
</div>

<h2 class="title">Latest Mobiles</h2>

<div class="product-container">

    <!-- Example product card -->
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

    <!-- Add other product cards here -->

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
          <% if(request.getParameter("loginError") != null){ %>
              <p class="text-danger">Login failed! Invalid username or password.</p>
          <% } %>
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
          <% if(request.getParameter("registerError") != null){ %>
              <p class="text-danger">Registration failed! Username may already exist.</p>
          <% } %>
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

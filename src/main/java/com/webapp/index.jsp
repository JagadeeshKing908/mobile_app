<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mobile Store</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<div class="container mt-4">
    <h2 class="text-center mb-4">Latest Mobiles</h2>

    <div class="row g-4">

        <!-- iPhone -->
        <div class="col-md-4">
            <div class="card product-card">
                <img src="https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-15-1.jpg"
                     class="card-img-top" alt="iPhone 15">
                <div class="card-body text-center">
                    <h5>iPhone 15</h5>
                    <p class="price">₹79,999</p>
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>

        <!-- Samsung -->
        <div class="col-md-4">
            <div class="card product-card">
                <img src="https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s24-1.jpg"
                     class="card-img-top" alt="Samsung S24">
                <div class="card-body text-center">
                    <h5>Samsung Galaxy S24</h5>
                    <p class="price">₹69,999</p>
                    <button class="btn btn-primary">Buy Now</button>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>

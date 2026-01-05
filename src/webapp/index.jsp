<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>MobileStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="navbar.jsp" />

<div class="container mt-4">
    <h3 class="mb-4">Latest Mobiles</h3>

    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <img src="assets/images/iphone.png" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">iPhone 15</h5>
                    <p class="card-text">₹79,999</p>
                    <a href="#" class="btn btn-primary w-100">Buy Now</a>
                </div>
            </div>
        </div>

        <div class="col-md-3">
            <div class="card">
                <img src="assets/images/samsung.png" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title">Samsung S24</h5>
                    <p class="card-text">₹69,999</p>
                    <a href="#" class="btn btn-primary w-100">Buy Now</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

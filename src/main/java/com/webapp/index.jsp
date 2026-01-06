<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Mobile Store</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>

<body>

<jsp:include page="navbar.jsp"/>

<h2 class="title">Latest Mobiles</h2>

<div class="container">

    <div class="card">
        <img src="<%=request.getContextPath()%>/images/iphone15.jpg">
        <h3>iPhone 15</h3>
        <p class="price">₹79,999</p>
        <button>Buy Now</button>
    </div>

    <div class="card">
        <img src="<%=request.getContextPath()%>/images/samsungS24.jpg">
        <h3>Samsung S24</h3>
        <p class="price">₹69,999</p>
        <button>Buy Now</button>
    </div>

</div>

</body>
</html>

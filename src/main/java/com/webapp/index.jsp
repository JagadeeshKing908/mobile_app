<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mobile Store</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
</head>
<body>

<jsp:include page="navbar.jsp" />

<div class="container">
    <h2 class="title">Available Mobiles</h2>

    <div class="mobile-grid">
        <!-- Sample card -->
        <div class="mobile-card">
            <img src="<%=request.getContextPath()%>/images/mobile1.jpg" alt="Mobile">
            <h3>iPhone 14</h3>
            <p>₹79,999</p>
            <button>Buy Now</button>
        </div>

        <div class="mobile-card">
            <img src="<%=request.getContextPath()%>/images/mobile2.jpg" alt="Mobile">
            <h3>Samsung S23</h3>
            <p>₹69,999</p>
            <button>Buy Now</button>
        </div>

        <div class="mobile-card">
            <img src="<%=request.getContextPath()%>/images/mobile3.jpg" alt="Mobile">
            <h3>OnePlus 12</h3>
            <p>₹59,999</p>
            <button>Buy Now</button>
        </div>
    </div>
</div>

</body>
</html>

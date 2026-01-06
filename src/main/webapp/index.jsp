<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="navbar.jsp"/>

<h2 class="title">Latest Mobiles</h2>

<div class="grid">
<c:forEach var="m" items="${mobiles}">
  <div class="card">
    <img class="product-img"
         src="images/${m.imageFolder}/1.jpg"
         data-images="images/${m.imageFolder}/1.jpg,images/${m.imageFolder}/2.jpg">

    <h3>${m.name}</h3>
    <p class="price">₹${m.price}</p>

    <button>Add to Cart</button>
  </div>
</c:forEach>
</div>

<script src="js/hover.js"></script>

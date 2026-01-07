<%@ page import="java.util.*,com.mobilesales.dao.MobileDAO,com.mobilesales.model.Mobile" %>
<jsp:include page="navbar.jsp"/>

<%
List<Mobile> mobiles = new MobileDAO().getAllMobiles();
%>

<div class="product-container">
<% for(Mobile m: mobiles){ %>
  <div class="card">
    <img src="<%=m.getImage()%>">
    <h3><%=m.getName()%></h3>
    <p>₹<%=m.getPrice()%></p>
    <a href="mobile?id=<%=m.getId()%>">Buy Now</a>
  </div>
<% } %>
</div>

<%@ page import="com.mobilesales.model.Mobile" %>
<%
Mobile m = (Mobile)request.getAttribute("mobile");
%>

<h2><%=m.getName()%></h2>
<p>Brand: <%=m.getBrand()%></p>
<p>RAM: <%=m.getRam()%></p>
<p>Storage: <%=m.getStorage()%></p>
<p>Camera: <%=m.getCamera()%></p>
<p>Battery: <%=m.getBattery()%></p>
<p>Price: ₹<%=m.getPrice()%></p>

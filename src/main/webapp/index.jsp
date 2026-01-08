<%@ page session="true" %>
<html>
<body>

<link rel="stylesheet" href="css/style.css">


<h2>Mobile Store</h2>

<%
    String user = (String) session.getAttribute("user");
    if (user == null) {
%>
    <a href="login.jsp">Login</a> |
    <a href="register.jsp">Register</a>
    <br><br>
    <button onclick="alert('Please login to buy')">Buy Now</button>
<%
    } else {
%>
    Welcome <%= user %>
    <br><br>
    <button>Buy Now</button>
<%
    }
%>

</body>
</html>

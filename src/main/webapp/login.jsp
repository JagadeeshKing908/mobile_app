<html>
<body>
<h3>Login</h3>
<link rel="stylesheet" href="css/style.css">

<form action="login" method="post">
    Email: <input type="email" name="email" required><br>
    Password: <input type="password" name="password" required><br>
    <input type="submit" value="Login">
</form>

<%
    if ("true".equals(request.getParameter("error"))) {
%>
    <p style="color:red">Login Failed</p>
<%
    }
%>

</body>
</html>

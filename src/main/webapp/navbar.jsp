<div style="background:#172337;color:white;padding:10px">
  <span style="font-size:20px">MobileStore</span>

  <span style="float:right">
    <%
      if (session.getAttribute("username") == null) {
    %>
        <a href="login.jsp" style="color:white">Login</a>
    <%
      } else {
    %>
        Welcome ${sessionScope.username}
        <a href="logout.jsp" style="color:white;margin-left:10px">Logout</a>
    <%
      }
    %>
  </span>
</div>

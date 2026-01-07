<div style="background:#111;color:white;padding:10px">
  MobileStore
  <span style="float:right">
    <% if(session.getAttribute("username")==null){ %>
      Login / Register
    <% } else { %>
      Welcome <%=session.getAttribute("username")%>
      <a href="logout">Logout</a>
    <% } %>
  </span>
</div>

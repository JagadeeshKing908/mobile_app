<%@ page session="true" %>

<%
if (!"ADMIN".equals(session.getAttribute("role"))) {
    response.sendRedirect("login.jsp");
}
%>

<h2>Admin Panel</h2>

<form action="admin" method="post">
    <input name="name" placeholder="Mobile Name" required>
    <input name="price" placeholder="Price" required>
    <input name="folder" placeholder="Image Folder Name" required>
    <button>Add Mobile</button>
</form>

<p>Images must exist inside <b>/images/foldername/</b></p>

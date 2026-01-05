<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="navbar.jsp" />

<div class="container mt-5" style="max-width:400px;">
    <h4>Create Account</h4>
    <form action="register" method="post">
        <input class="form-control mb-3" name="username" placeholder="Username" required>
        <input class="form-control mb-3" type="password" name="password" placeholder="Password" required>
        <button class="btn btn-success w-100">Register</button>
    </form>
</div>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: doosuur
  Date: 05.10.2023
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
       <link rel="stylesheet" type="text/css" href="css/Login.css">
</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<form method="post" action="login" class="register-form"
      id="login-form">
    <div class = "imgcontainer">
        <img src="images/background.jpg" alt="background image" class="avatar">
    </div>


    <div class="container">
        <%--@declare id="uname"--%><%--@declare id="psw"--%>
            <label for="uname"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>

        <button type="submit">Login</button>
        <label>
            <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
        <button type="button" class="cancelbtn">Cancel</button>
        <span class="psw">Forgot <a href="?">password</a>?</span>
        <br>
        <span class="noacc">Don't have <a href="Registration.jsp">an account</a>?</span>
    </div>
</form>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status = document.getElementById("status").value;
    if (status == "Failed") {
        swal("Sorry", "Wrong Username or Password", "error");
    }
</script>
</body>
</html>


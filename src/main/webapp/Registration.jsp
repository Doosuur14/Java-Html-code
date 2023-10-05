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
    <title>Registration</title>
       <link rel="stylesheet" type="text/css" href="css/Registration.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<form style="border:1px solid #ccc">
    <div class="container">
        <h1>Sign Up</h1>
        <p>Please fill in this form to  create an account.</p>
        <hr>

        <label for="name"><b>Full Name</b></label>
        <input type="text" placeholder="Enter Full Name" id="name" name="name" required>

        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" id="email" name="email" required>

        <label for="pass"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" id="pass" name="psw" required>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" id="psw-repeat" name="psw-repeat" required>

        <label>
            <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
        </label>

        <p>By creating an account you agree to our <a href="?" style="color:dodgerblue">Terms & Privacy</a>. </p>

        <div class="clearfix">
            <button type="button" class="cancelbtn">Cancel</button>
            <button type="submit" class="signupbtn">Sign Up</button>
            <br>
            <span class="acc">Already have <a href="Login.jsp">an account</a>?</span>

        </div>
    </div>
</form>

<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="alert/dist/sweetalert.css">

<script type="text/javascript">
    var status = document.getElementById("status").value;
    if (status == "Success"){
        swal("Congratulation","Account Created Successfully","Success");
    }
</script>
</body>
</html>

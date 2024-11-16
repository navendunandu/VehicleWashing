<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
if(request.getParameter("submit")!=null){
    String email = request.getParameter("txt_email");
    String pass = request.getParameter("pwd");
    String admin = "SELECT * from tbl_admin where admin_email='"+email+"' and admin_password='"+pass+"'";
    String customer = "SELECT * from tbl_customer where customer_email='"+email+"' and customer_password='"+pass+"'";
    ResultSet rAdmin = con.selectCommand(admin);
    ResultSet rCust = con.selectCommand(customer);
    if(rAdmin.next()){
        session.setAttribute("aid", rAdmin.getString("admin_id"));
        session.setAttribute("aname", rAdmin.getString("admin_name"));
        response.sendRedirect("../Admin/Homepage.jsp");
    }
    else if(rCust.next()){
        session.setAttribute("cid", rCust.getString("customer_id"));
        session.setAttribute("cname", rCust.getString("customer_name"));
        response.sendRedirect("../Customer/Homepage.jsp");
    }
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- External Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

    <!-- Internal CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #00C6FF, #0072FF); /* Blue gradient for a clean, fresh look */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: white;
        }

        .login-container {
            background-color: #fff;
            color: #333;
            width: 100%;
            max-width: 400px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .login-container h2 {
            color: #0072FF;
            margin-bottom: 20px;
        }

        .login-container label {
            font-size: 14px;
            text-align: left;
            margin-bottom: 5px;
            display: block;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ddd;
            margin-bottom: 15px;
            outline: none;
            transition: border-color 0.3s ease-in-out;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #0072FF;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #0072FF;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .login-container input[type="submit"]:hover {
            background-color: #005bb5;
        }

        .login-container .forgot-password {
            margin-top: 10px;
            font-size: 12px;
            color: #0072FF;
            text-decoration: none;
        }

        .login-container .forgot-password:hover {
            text-decoration: underline;
        }

        .login-container .error-message {
            color: red;
            font-size: 14px;
            display: none;
            margin-top: 10px;
        }

        .login-container .success-message {
            color: green;
            font-size: 14px;
            display: none;
            margin-top: 10px;
        }

        /* Media Query for Responsiveness */
        @media (max-width: 480px) {
            .login-container {
                padding: 20px;
            }

            .login-container input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>

<body>

<div class="login-container">
    <h2>Login</h2>
    <form method="POST" name="loginForm" onsubmit="return validateLoginForm()">
        <div class="error-message" id="error-message"></div>

        <label for="txt_email">Email:</label>
        <input type="text" name="txt_email" id="txt_email" required>

        <label for="pwd">Password:</label>
        <input type="password" name="pwd" id="pwd" required>

        <input type="submit" name="submit" value="Login">

        <a href="ForgetPassword.jsp" class="forgot-password">Forgot password?</a>

        <div class="success-message" id="success-message"></div>
    </form>
</div>

<!-- JavaScript for Validation -->
<script>
    function validateLoginForm() {
        var email = document.getElementById("txt_email").value;
        var password = document.getElementById("pwd").value;

        // Basic email validation
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            document.getElementById("error-message").innerText = "Please enter a valid email address!";
            document.getElementById("error-message").style.display = "block";
            return false;
        }

        // Basic password validation (check if it's not empty)
        if (password.trim() === "") {
            document.getElementById("error-message").innerText = "Password cannot be empty!";
            document.getElementById("error-message").style.display = "block";
            return false;
        }

        // Clear error message if validation passes
        document.getElementById("error-message").style.display = "none";
        return true;
    }
</script>

</body>
</html>

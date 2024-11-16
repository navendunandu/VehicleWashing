<%-- 
    Document   : ResetPassword
    Created on : Nov 7, 2024, 11:55:34 AM
    Author     : robin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
    String id = (String) session.getAttribute("reset_id"); // Retrieve email from session
    if(id == null){
        response.sendRedirect("ForgetPassword.jsp"); // If no session, redirect to ForgotPassword page
    }

    if(request.getParameter("submit") != null){
        String newPassword = request.getParameter("new_pwd");
        String retypePassword = request.getParameter("retype_pwd");

        // Check if the passwords match
        if(!newPassword.equals(retypePassword)){
            out.println("<script>alert('Passwords do not match! Please try again.'); window.location='ResetPassword.jsp';</script>");
        } else {
            // Update the password in the database
            String updateQuery = "UPDATE tbl_customer SET customer_password='" + newPassword + "' WHERE customer_id='" + id + "'";
            con.executeCommand(updateQuery);

            out.println("<script>alert('Password has been updated successfully!'); window.location='Login.jsp';</script>");
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
        }

        h2 {
            text-align: center;
            color: #4A90E2;
            margin-bottom: 20px;
        }

        .form-container table {
            width: 100%;
            border-collapse: collapse;
        }

        .form-container td {
            padding: 10px;
            font-size: 14px;
        }

        .form-container input[type="password"],
        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-top: 5px;
            outline: none;
        }

        .form-container input[type="submit"] {
            background-color: #4A90E2;
            color: white;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #357ABD;
        }

        /* Media Query for Responsiveness */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            .form-container input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Reset Your Password</h2>

    <form method="POST">
        <table>
            <tr>
                <td>New Password:</td>
                <td><input type="password" name="new_pwd" id="new_pwd" required></td>
            </tr>
            <tr>
                <td>Retype Password:</td>
                <td><input type="password" name="retype_pwd" id="retype_pwd" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="submit" value="Update Password">
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>


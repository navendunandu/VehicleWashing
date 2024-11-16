<%-- 
    Document   : ForgetPassword
    Created on : Nov 7, 2024, 11:53:14 AM
    Author     : robin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
    // Stage 1: Handle security question validation
    if(request.getParameter("submit") != null){
        String email = request.getParameter("txt_email");
        String secQuestion = request.getParameter("sec_question");
        String secAnswer = request.getParameter("sec_answer");

        // Query to fetch the correct answer for the security question
        String query = "SELECT * FROM tbl_customer WHERE customer_email='" + email + "' AND qstn_id='" + secQuestion + "' AND customer_ans='" + secAnswer + "'";
        ResultSet rs = con.selectCommand(query);

        if(rs.next()){
            // If the answer is correct, redirect to the password reset page
            session.setAttribute("reset_id", rs.getString("customer_id")); // Store the email in session
            response.sendRedirect("ResetPassword.jsp"); // Redirect to the password reset page
        } else {
            out.println("<script>alert('Incorrect security answer! Please try again.'); window.location='ResetPassword.jsp';</script>");
            
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
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

        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="submit"],
        .form-container select {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-top: 5px;
            outline: none;
        }

        .form-container input[type="text"]:focus,
        .form-container input[type="password"]:focus,
        .form-container select:focus {
            border-color: #4A90E2;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4A90E2;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
        }

        .form-container input[type="submit"]:hover {
            background-color: #357ABD;
        }

        .form-container .error {
            color: red;
            font-size: 12px;
            display: none;
        }

        .form-container .success {
            color: green;
            font-size: 12px;
            display: none;
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
    <h2>Forgot Password</h2>

    <form method="POST" name="forgotPasswordForm" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="txt_email" id="txt_email" required></td>
            </tr>
            <tr>
                <td>Security Question:</td>
                <td>
                    <select name="sec_question" id="sec_question" required>
                        <option value="">Select a Security Question</option>
                        <%
                        String qry = "SELECT * from tbl_qstn";
   ResultSet rs = con.selectCommand(qry);
   while(rs.next()){
                        %>
                        <option value="<%=rs.getString("qstn_id")%>"><%=rs.getString("qstn_name")%></option>
                        <%
   }
                        %>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Security Answer:</td>
                <td><input type="text" name="sec_answer" id="sec_answer" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" name="submit" value="Verify Answer">
                </td>
            </tr>
        </table>
    </form>
</div>

<script>
    function validateForm() {
        var email = document.getElementById("txt_email").value;
        var secAnswer = document.getElementById("sec_answer").value;

        // Basic email validation
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            alert("Please enter a valid email address!");
            return false;
        }

        if (secAnswer.trim() === "") {
            alert("Please provide an answer to the security question!");
            return false;
        }

        return true;
    }
</script>

</body>
</html>

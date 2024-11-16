<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%
    if(request.getParameter("btn_submit")!=null){
       String customer = request.getParameter("txt_name");
       String email = request.getParameter("txt_email");
       String phone =request.getParameter("txt_phone");
       String password =request.getParameter("pwd");
       String cpassword =request.getParameter("cpwd");
       String securityQuestion = request.getParameter("sec_question");
       String securityAnswer = request.getParameter("sec_answer");

       if(password.equals(cpassword)){
           String insQry = "INSERT INTO tbl_customer(customer_name, customer_email, customer_phone, customer_password, qstn_id, customer_ans) " +
                           "VALUES('"+customer+"','"+email+"','"+phone+"','"+password+"','"+securityQuestion+"','"+securityAnswer+"')";
           con.executeCommand(insQry);
       } else {
           %>
           <script>
               alert("Passwords do not match. Please try again.");
               window.location="Customer.jsp";
           </script>
           <%
       }
   }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>

    <!-- External Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    
    <!-- Internal CSS -->
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
    <h2>Customer Registration</h2>

    <form method="POST" name="registrationForm" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="txt_name" id="txt_name" required pattern="^[A-Z]+[a-zA-Z ]*$"></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="txt_email" id="txt_email" required></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="txt_phone" id="txt_phone" required pattern="[7-9]{1}[0-9]{9}"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="pwd" id="pwd" required></td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td><input type="password" name="cpwd" id="cpwd" required></td>
            </tr>
            <!-- Security Question Dropdown -->
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
                    <input type="submit" name="btn_submit" value="Register">
                </td>
            </tr>
        </table>

        <div class="error" id="error-message"></div>
        <div class="success" id="success-message">Registration successful!</div>
    </form>
</div>

<!-- JavaScript for Validation -->
<script>
    function validateForm() {
        var name = document.getElementById("txt_name").value;
        var email = document.getElementById("txt_email").value;
        var phone = document.getElementById("txt_phone").value;
        var password = document.getElementById("pwd").value;
        var confirmPassword = document.getElementById("cpwd").value;
        var secAnswer = document.getElementById("sec_answer").value;

        // Check if password and confirm password match
        if (password !== confirmPassword) {
            document.getElementById("error-message").innerText = "Passwords do not match!";
            document.getElementById("error-message").style.display = "block";
            return false;
        }

        // Basic email validation
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            document.getElementById("error-message").innerText = "Please enter a valid email address!";
            document.getElementById("error-message").style.display = "block";
            return false;
        }

        // Basic phone number validation
        var phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phone)) {
            document.getElementById("error-message").innerText = "Please enter a valid 10-digit phone number!";
            document.getElementById("error-message").style.display = "block";
            return false;
        }

        // Basic validation for security answer
        if (secAnswer.trim() === "") {
            document.getElementById("error-message").innerText = "Please provide an answer to the security question!";
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

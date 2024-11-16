<%-- 
    Document   : My Profile.jsp
    Created on : Oct 18, 2024, 2:53:43 PM
    Author     : robin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
    
<%
    String user = "select * from tbl_customer where customer_id=" + session.getAttribute("cid");
    ResultSet rs = con.selectCommand(user);
    rs.next();
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        /* General Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html, body {
    height: 100%;
}

.container-m {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

.profile-card {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    padding: 20px;
    width: 100%;
    max-width: 600px;
    text-align: center;
}

.profile-header {
    background-color: #42a5f5;
    padding: 20px 0;
    border-radius: 10px 10px 0 0;
}

.profile-header .logo {
    width: 60px;
    height: 60px;
    object-fit: contain;
}

.profile-header .profile-title {
    color: #fff;
    font-size: 24px;
    margin-top: 10px;
}

/* Profile Info */
table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
    text-align: left;
}

table .label {
    font-weight: bold;
    padding: 10px;
}

table .info {
    padding: 10px;
    color: #555;
}

.profile-info {
    margin-top: 20px;
}

/* Buttons */
.profile-actions {
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-top: 30px;
}

.action-btn {
    padding: 10px 20px;
    font-size: 16px;
    border-radius: 5px;
    text-decoration: none;
    display: inline-block;
    color: #fff;
    transition: all 0.3s ease;
}

.edit-btn {
    background-color: #66bb6a;
}

.change-password-btn {
    background-color: #ffa726;
}

.action-btn:hover {
    transform: translateY(-2px);
}

.action-btn:active {
    transform: translateY(0);
}

/* Responsive Design */
@media (max-width: 600px) {
    .profile-card {
        padding: 15px;
    }

    .profile-header .profile-title {
        font-size: 20px;
    }

    .action-btn {
        font-size: 14px;
    }
}

    </style>
</head>
<body>
    
        <div class="container-m">
        <div class="profile-card">
            <div class="profile-header">
                <h1 class="profile-title">My Profile</h1>
            </div>
            <div class="profile-info">
                <table>
                    <tbody>
                        <tr>
                            <td class="label">Name:</td>
                            <td class="info"><%= rs.getString("customer_name") %></td>
                        </tr>
                        <tr>
                            <td class="label">Email:</td>
                            <td class="info"><%= rs.getString("customer_email") %></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="profile-actions">
                <a href="Edit Profile.jsp" class="action-btn edit-btn">Edit Profile</a>
                <a href="Change Password.jsp" class="action-btn change-password-btn">Change Password</a>
            </div>
        </div>
    </div>
</body>
</html>
<%@ include file="Footer.jsp" %>
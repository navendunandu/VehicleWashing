<%-- 
    Document   : SelectBrand
    Created on : 25 Oct, 2024, 7:08:37 PM
    Author     : Nandu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f8ff;
                color: #333;
                text-align: center;
            }
            h1 {
                color: #0073e6;
                font-size: 2em;
                margin-top: 20px;
            }
            .brand-container {
                display: flex;
                justify-content: center;
                flex-wrap: wrap;
                margin-top: 30px;
            }
            .brand-container a{
                text-decoration: none;
                color:black;
            }
            .brand-card {
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
                margin: 15px;
                width: 150px;
                cursor: pointer;
                transition: transform 0.3s, box-shadow 0.3s;
            }
            .brand-card:hover {
                transform: scale(1.05);
                box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.15);
            }
            .brand-logo {
                width: 100%;
                height: 100px;
                border-radius: 10px 10px 0 0;
                object-fit: cover;
            }
            .brand-name {
                padding: 10px;
                font-size: 1.1em;
                color: #0073e6;
            }
        </style>
    </head>
    <body>
        <h1>Select Your Car Brand</h1>
        <div class="brand-container">
        <%
        String qry="SELECT * FROM tbl_brand";
        ResultSet brand = con.selectCommand(qry);
        while(brand.next()){
        %>
        <a href="BookService.jsp?bid=<%=brand.getString("brand_id")%>" class="brand-card">
                <img src="../Assets/Files/<%=brand.getString("brand_logo")%>" alt="Toyota Logo" class="brand-logo">
                <div class="brand-name"><%=brand.getString("brand_name")%></div>
            </a>
        <%
        }
        %>
        </div>
    </body>
</html>
<%@include file="Footer.jsp" %>


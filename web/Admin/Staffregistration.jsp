

<%-- 
    Document   : Staffregistration.jsp
    Created on : Oct 4, 2024, 3:23:40 PM
    Author     : robin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<!DOCTYPE html>
   <%
//   if(request.getParameter("btn_submit")!=null){
//       String name = request.getParameter("txt_name");     
//       String contact = request.getParameter("ph_num");
//
//       String insQry= "INSERT into tbl_staff(staff_name, staff_contact, staff_doj) values('"+name+"','"+contact+"',curdate())";
//       con.executeCommand(insQry);
//   } 
   
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div align="center" id="tab">
             <form method="POST" enctype="multipart/form-data" action="../Assets/ActionPages/StaffUpload.jsp">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input required type="text" name="txt_name"  pattern="^[A-Z]+[a-zA-Z ]*$" ></td>
                    </tr>
                    <tr>
                        <td>Contact</td>
                        <td><input type="number" required name="ph_num"  pattern="[7-9]{1}[0-9]{9}" ></td>
                    </tr>                    
                    <tr>
                        <td>Address</td>
                        <td>
                            <textarea name="txt_address"></textarea>
                        </td>
                    </tr>
                     <tr>
                        <td>Photo</td>
                        <td>
                            <input type="file" name="filephoto">
                        </td>
                    </tr>
                    <tr>
                <a href="Stafflist.jsp"></a>
                      <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Register" /></td>
                    </tr>
                </tbody>
            </table>

        </form>
         </div>
        
    </body>
</html>
<%@include file="Footer.jsp" %>
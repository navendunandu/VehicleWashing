<%-- 
    Document   : Edit Profile
    Created on : Oct 18, 2024, 2:54:14 PM
    Author     : robin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>

<%
String user="select * from tbl_customer where customer_id="+session.getAttribute("cid");

ResultSet rs = con.selectCommand(user);
rs.next();

if(request.getParameter("submit")!=null)
{
   String name=request.getParameter("txt_name");
   String email=request.getParameter("txt_email");
   String phone=request.getParameter("txt_phone");
   
   String UpQry="UPDATE tbl_customer set customer_name='"+name+"',customer_email='"+email +"',customer_phone='"+phone+"' where customer_id="+session.getAttribute("cid");
   out.print(UpQry);
   if(con.executeCommand(UpQry))
   {
       %>
       <script>
       alert("Updated..");
       window.location="My Profile.jsp";
       </script>
       <%
   }
   else
   {
      %>
       <script>
       alert("Error..");
       
       </script>
       <%  
   }
   
}
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div align="center" id="tab">
        <form method="POST">
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input required type="text" name="txt_name" value="<%=rs.getString("customer_name")%>" pattern="^[A-Z]+[a-zA-Z ]*$" ></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="txt_email" value="<%=rs.getString("customer_email")%>" ></td>
                    </tr>
                    <tr>
                        <td>Contact</td>
                        <td><input type="text" required name="txt_phone" value="<%=rs.getString("customer_phone")%>" pattern="[7-9]{1}[0-9]{9}"></td>
                    </tr>
                    <tr>
                        <td  colspan="2" align="center"><input type="submit" name="submit" value="update"</td>
                    </tr>
                
                </tbody>
            </table>

        </form>
         </div>
    </body>
</html>
<%@include  file="Footer.jsp" %>
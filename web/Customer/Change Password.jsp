<%-- 
    Document   : Change Password
    Created on : Oct 18, 2024, 2:54:39 PM
    Author     : robin
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
    </head>
<%
if(request.getParameter("submit")!=null){
    String oldpass = request.getParameter("opwd");
    String newpass = request.getParameter("npwd");
    String repass = request.getParameter("rpwd");
String user="select * from tbl_customer where customer_id="+session.getAttribute("cid");
ResultSet rs = con.selectCommand(user);
rs.next();
      String dbPass = rs.getString("customer_password");
       System.out.print(dbPass);
      if(oldpass.equals(dbPass))
      {
          if(newpass.equals(repass))
              
          {
             String qry="UPDATE tbl_customer set customer_password='"+newpass+"' where customer_id="+session.getAttribute("cid");
             System.out.println(qry);
             con.executeCommand(qry);
          }
          else
          {
              %>
           <script>
               alert("wrong password");
               window.location="Change Password.jsp";
           </script>
           <% 
          }
      }
   else
      {
          %>
          <script>
              alert("wrong password");
              window.location="Change Password.jsp";
          </script>
          <%
          }
}
else{
    %>
          <script>
              alert("Something went wrong");
              //window.location="Change Password.jsp";
          </script>
          <%
}
%>
    <body>
         <div align="center" id="tab">
         <form method="POST">
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>Old password</td>
                        <td><input type="password" name="opwd"</td>
                    </tr>
                    <tr>
                        <td>New password</td>
                        <td><input type="password" name="npwd"</td>
                    </tr>
                    <tr>
                        <td>Retype password</td>
                        <td><input type="password" name="rpwd"</td>
                    </tr>
                    <tr>
                        <td  colspan="2" align="center"><input type="submit" name="submit" value="submit"</td>
                    </tr>
                </tbody>
            </table>
         </form>
         </div>
    </body>
</html>
<%@include  file="Footer.jsp" %>
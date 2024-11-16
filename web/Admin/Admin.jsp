<%-- 
    Document   : Admin.jsp
    Created on : Oct 2, 2024, 3:11:32 PM
    Author     : robin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<!DOCTYPE html>
<%
   if(request.getParameter("btn_submit")!=null){
       String admin = request.getParameter("txt_name");
       String email = request.getParameter("txt_email");
       String pass = request.getParameter("pwd");
       String insQry= "INSERT into tbl_admin(admin_name,admin_email,admin_password) values('"+admin+"','"+email+"','"+pass+"')";
       con.executeCommand(insQry);
   } 
   
   if(request.getParameter("did")!=null){
       String del = "delete from tbl_admin where admin_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
          <script>
               alert("Deleted");
               window.location="Admin.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="Admin.jsp";
           </script>
           <%
       }
   }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <a href="Brand.jsp"></a>
    </head>
    <body>
        <form method='POST'>
            <table border="1">
              
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type='text' name='txt_name' pattern="^[A-Z]+[a-zA-Z ]*$"</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type='text' name='txt_email'</td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type='password' name='pwd'</td>
                    </tr>
                    <tr>
                        <td colspan='2' align='center'><input type='submit' name='btn_submit'/>
                        <input type='reset' name='btn_reset' /></td>
                    </tr>
                </tbody>
            </table>

        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
   String qry="SELECT * from tbl_admin";
   ResultSet rs = con.selectCommand(qry);
     int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("admin_name")%></td>
                    <td><%=rs.getString("admin_email")%></td>
                    <td><a href='Admin.jsp?did=<%=rs.getString("admin_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
    </body>
</html>
 <%@include  file="Footer.jsp" %>


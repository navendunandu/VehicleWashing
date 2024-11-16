<%-- 
    Document   : UserList
    Created on : Oct 17, 2024, 4:12:29 PM
    Author     : robin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<!DOCTYPE html>
<%
  
   
   if(request.getParameter("did")!=null){
       String del = "delete from tbl_customer where customer_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
          <script>
               alert("Deleted");
               window.location="UserList.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="UserList.jsp";
           </script>
           <%
       }
   }
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div align="center" id="tab">
        <table border="1">
            <thead>
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                 <%
   String qry="SELECT * from tbl_customer";
   ResultSet rs = con.selectCommand(qry);
     int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
            <a href="Admin.jsp"></a>
                    <td><%=rs.getString("customer_name")%></td>
                    <td><%=rs.getString("customer_email")%></td>
                    <td><%=rs.getString("customer_phone")%></td>
                    <td><%=rs.getString("customer_password")%></td>
                    <td><a href='UserList.jsp?did=<%=rs.getString("customer_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
            </div>

       
    </body>
</html>
 <%@include  file="Footer.jsp" %>

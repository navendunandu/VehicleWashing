<%-- 
    Document   : Stafflist.jsp
    Created on : Oct 4, 2024, 3:42:49 PM
    Author     : robin
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<% 

if(request.getParameter("did")!=null){
       String del = "delete from tbl_staff where staff_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
          <script>
               alert("Deleted");
               window.location="Stafflist.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="Stafflist.jsp";
           </script>
           <%
       }
   }
%>
<!DOCTYPE html
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
                    <th>Sl.No</th>
                    <th>Name</th>
                    <th>Contact</th>
                   <th>Address</th>
                   <th>Photo</th>
                  
                    <th>Action</th>
                </tr>
            </thead>
        </div>
           </body>
            <tbody>
                
                <%
   String qry = "SELECT * from tbl_staff";
   ResultSet rs = con.selectCommand(qry);
   int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("staff_name")%></td>
                    <td><%=rs.getString("staff_contact")%></td>
                    <td><%=rs.getString("staff_address")%></td>
                    <td><img src="../Assets/Files/Staff/<%=rs.getString("staff_photo")%>" width="150" height="150"></td>
                    <td><a href='Stafflist.jsp?did=<%=rs.getString("staff_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
</html>
 <%@include  file="Footer.jsp" %>

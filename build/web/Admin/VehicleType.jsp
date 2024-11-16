<%-- 
    Document   : VehicleType
    Created on : Oct 2, 2024, 11:12:45 AM
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
       String type = request.getParameter("txt_name");
       String insQry= "INSERT into tbl_vehicletype(type_name) values('"+type+"')";
       con.executeCommand(insQry);
   }
   
   if(request.getParameter("did")!=null){
       String del = "delete from tbl_vehicletype where type_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
          <script>
               alert("Deleted");
               window.location="VehicleType.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="VehicleType.jsp";
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
        <form method="POST">
            <table border="1">
                    <tr>
                        <td>Type</td>
                        <td><input required type="text" name="txt_name" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="btn_submit" /></td>
                    </tr>
            </table>

        </form>
             
             <table border="1">
                  <thead>
                <tr>
                    <th>Sl.No</th>
                    <th>Type</th>
                   
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
   String qry = "SELECT * from tbl_vehicletype";
   ResultSet rs = con.selectCommand(qry);
   int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("type_name")%></td>
                    
                    <td><a href='VehicleType.jsp?did=<%=rs.getString("type_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
         </div>
    </body>
</html>
 <%@include  file="Footer.jsp" %>

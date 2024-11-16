<%-- 
    Document   : Locality
    Created on : Oct 2, 2024, 11:38:33 AM
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
       String locality = request.getParameter("txt_name");
       String insQry= "INSERT into tbl_locality(locality_name) values('"+locality+"')";
       con.executeCommand(insQry);
   } 
   
   if(request.getParameter("did")!=null){
       String del="delete from tbl_Locality where Locality_id="+request.getParameter("did");
   if(con.executeCommand(del)){          
   %>
   <script>
      alert("Deleted");
      window.location="Locality.jsp";
   </script>
      <%
    }
    else{
    %>
       <script>
      alert("Failed");
      window.location="Locality.jsp";
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
               
                <tbody>
                    <tr>
                        <td>Locality</td>
                        <td><input  type="text" name="txt_name" required=""  pattern="^[A-Z]+[a-zA-Z ]*$"/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="btn_submit"/></td>
                        
                    </tr>
                </tbody>
            </table>
        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>Sl.No</th>
                    <th>Locality</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
   String qry = "SELECT * from tbl_locality";
   ResultSet rs = con.selectCommand(qry);
   int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("locality_name")%></td>
                    <td><a href='Locality.jsp?did=<%=rs.getString("Locality_id")%>'>delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
        </div>

    </body>
</html>
 <%@include  file="Footer.jsp" %>

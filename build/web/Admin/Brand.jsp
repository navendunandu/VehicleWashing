<%-- 
    Document   : Brand
    Created on : Oct 2, 2024, 11:01:55 AM
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
       String del = "delete from tbl_brand where brand_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
           <script>
               alert("Deleted");
               window.location="Brand.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="Brand.jsp";
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
        <form method="POST" enctype="multipart/form-data" action="../Assets/ActionPages/BrandUpload.jsp">
            <table border="1">
                    <tr>
                        <td>Brand</td>
                        <td><input required type="text" name="txt_name" /></td>
                    </tr>
                     <tr>
                        <td>logo</td>
                        <td><input type="file" name="file_name" /></td>
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
                    <th>Brand</th>
                    <th>Logo</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
   String qry = "SELECT * from tbl_brand";
   ResultSet rs = con.selectCommand(qry);
   int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("brand_name")%></td>
                    <td><img src="../Assets/Files/<%=rs.getString("brand_logo")%>"</td>
                    <td><a href='Brand.jsp?did=<%=rs.getString("brand_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
        </div>
    </body>
</html>


   <%@include  file="Footer.jsp" %>
<%-- 
    Document   : Model.jsp
    Created on : Oct 4, 2024, 11:04:50 AM
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
       String model = request.getParameter("txt_name"); 
       String brand = request.getParameter("sel_brand");
       String vehicletype = request.getParameter("sel_vehicletype");

       String insQry= "INSERT into tbl_model(model_name,brand_id,type_id) values('"+model+"','"+brand+"','"+vehicletype+"')";
       con.executeCommand(insQry);
   } 
   if(request.getParameter("did")!=null){
       String del = "delete from tbl_model where model_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
           <script>
               alert("Deleted");
               window.location="Model.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="Model.jsp";
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
                        <td>Model</td>
                        <td><input required type="text" name="txt_name" /></td>
                    </tr>
                     <tr>
                        <td>Brand</td>
                                <td><select name="sel_brand">
                                        <option value="">
                                            Select Brand
                                        </option>
                                        <%
   String brand  = "SELECT * from tbl_brand";
   ResultSet br = con.selectCommand(brand);
   while(br.next()){
   %>
   <option value="<%=br.getString("brand_id")%>">
       <%=br.getString("brand_name")%>
   </option>
   <%}
   %>
                            </select></td>
                    </tr>
                    <tr>
                        <td>vehicle</td>
                        <td><select name="sel_vehicletype">
                                <option value="">
                                    Select VehicleType
                                </option>
                                <%
String vehicletype= "SELECT * from tbl_vehicletype";
ResultSet vt = con.selectCommand(vehicletype);
while(vt.next()){
    %>
    <option value="<%=vt.getString("type_id")%>">
        <%=vt.getString("type_name")%>
    </option>
<%}
   %>               
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
                    <th>Model</th>
                    <th>Brand</th>
                    <th>vehicle</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
   String qry = "SELECT * from tbl_model m inner join tbl_brand b on b.brand_id=m.brand_id inner join tbl_vehicletype v on v.type_id=m.type_id";
   ResultSet rs = con.selectCommand(qry);
   int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("model_name")%></td>
                    <td><%=rs.getString("brand_name")%></td>
                    <td><%=rs.getString("type_name")%></td>
                    <td><a href='Model.jsp?did=<%=rs.getString("model_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
        </div>
    </body>
</html>
 <%@include  file="Footer.jsp" %>

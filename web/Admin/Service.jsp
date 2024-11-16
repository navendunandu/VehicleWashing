<%-- 
    Document   : Service.jsp
    Created on : Oct 4, 2024, 12:49:09 PM
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
       String service = request.getParameter("txt_name");
       String cost= request.getParameter ("src_cost");
       String vehicletype= request.getParameter ("sel_vehicletype");
       String insQry= "INSERT into tbl_service(service_name,service_cost,type_id)values('"+service+"','"+cost+"','"+vehicletype+"')";
       con.executeCommand(insQry);
   } 
   
   if(request.getParameter("did")!=null){
       String del = "delete from tbl_service where service_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       %>
       <script>
               alert("Deleted");
               window.location="Service.jsp";
           </script>
           <%
       }
       else{
           %>
           <script>
               alert("Failed");
               window.location="Service.jsp";
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
        <form method ="POST">
            <table border="1">
                 <tr>
                        <td>Service</td>
                        <td><input type="text" name="txt_name" /></td>
                    </tr>
                    <tr>
                        <td>cost</td>
                        <td><input type="double" name="src_cost" /></td>
                    </tr>
                            <tr>
                                <td>vehicletype</td>
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
                                            </select>
                                        </td>
                            </tr>
                    <tr>
                        <td colspan="2" align='center'><input type="submit" name="btn_submit" /></td>
                    </tr>
            </table>

<table border="1">
    <thead>
        <tr>
            <th>Sl.No</th> 
            <th>Service</th>
            <th>Cost</th>
            <th>vehicle</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
    <%
      String qry="SELECT * from tbl_service s inner join tbl_vehicletype v on v.type_id=s.type_id";
   ResultSet rs = con.selectCommand(qry);
     int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>  
                    <td><%=rs.getString("service_name")%></td>
                    <td><%=rs.getDouble("service_cost")%></td>
                    <td><%=rs.getString("type_name")%></td>
                    <td><a href='Service.jsp?did=<%=rs.getString("service_id")%>'>Delete</a></td>
                </tr>
                <%}
   %>
    </tbody>
</table>
         </div>
        </body>
        </html>
         <%@include  file="Footer.jsp" %>

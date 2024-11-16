<%-- 
    Document   : SecurityQuestion
    Created on : Nov 7, 2024, 11:43:06 AM
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
       String qstn = request.getParameter("txt_name");
       String insQry= "INSERT into tbl_qstn(qstn_name) values('"+qstn+"')";
       con.executeCommand(insQry);
   } 
   
   if(request.getParameter("did")!=null){
       String del="delete from tbl_qstn where qstn_id="+request.getParameter("did");
   if(con.executeCommand(del)){          
   %>
   <script>
      alert("Deleted");
      window.location="SecurityQuestion.jsp";
   </script>
      <%
    }
    else{
    %>
       <script>
      alert("Failed");
      window.location="SecurityQuestion.jsp";
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
                        <td>Question</td>
                        <td><textarea name="txt_name"></textarea></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="btn_submit" /></td>
                        
                    </tr>
                </tbody>
            </table>
        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>Sl.No</th>
                    <th>Question</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
   String qry = "SELECT * from tbl_qstn";
   ResultSet rs = con.selectCommand(qry);
   int i = 0;
   while(rs.next()){
       i++;
   
   %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("qstn_name")%></td>
                    <td><a href='qstn.jsp?did=<%=rs.getString("qstn_id")%>'>delete</a></td>
                </tr>
                <%}
   %>
            </tbody>
        </table>
         </div>

    </body>
</html>
 <%@include  file="Footer.jsp" %>

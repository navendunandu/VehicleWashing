<%-- 
    Document   : BookService
    Created on : 25 Oct, 2024, 7:10:12 PM
    Author     : Nandu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<%
if(request.getParameter("btn_submit")!=""){
    String staff = request.getParameter("sel_vehicletype");
    String time = request.getParameter("txt_time");
    String inSQry="UPDATE tbl_booking set staff_id='"+staff+"', booking_fortime='"+time+"', booking_status=1 where booking_id="+request.getParameter("bid");
//    out.println(inSQry);
    if(con.executeCommand(inSQry)){
        %>
        <script>
            alert("Request Updated");
            window.location="Bookings.jsp";
        </script>
        <%
    }
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center" id="tab">
        <form method="POST">
            <input type="hidden" name="txt_brand" id="txt_brand" value="<%=request.getParameter("bid")%>">
            <table border="1" cellspacing="1" cellpadding="1">
                <tbody>
                    <tr>
                        <td>Staff</td>
                        <td>
                            <select name="sel_vehicletype">
                                                <option value="">
                                        Staff 
                                            </option>
                                           
                                                                        <%
                                                        String vehicletype= "SELECT * from tbl_staff";
                                                        ResultSet vt = con.selectCommand(vehicletype);
                                                        while(vt.next()){
                                                            %>
                                                            <option value="<%=vt.getString("staff_id")%>">
                                                                <%=vt.getString("staff_name")%>
                                                            </option>
                                                        <%}
                                                           %>      
                                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Time</td>
                        <td><input type="time" name="txt_time"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" name="btn_submit" value="Submit">
                        </td>
                    </tr>
                </tbody>
            </table>

        </form>
        </div>
    </body>
</html>
<%@include  file="Footer.jsp" %>

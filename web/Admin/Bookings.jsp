 <%--
    Document   : MyBooking
    Created on : 26 Oct, 2024, 7:23:40 AM
    Author     : Nandu
--%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="SessionValidator.jsp" %>
<%
if(request.getParameter("id")!=null){
    String updQry="update tbl_booking set booking_status='"+request.getParameter("st")+"' where booking_id="+request.getParameter("id");
    if(con.executeCommand(updQry)){
        %>
        <script>
            alert("Updated")
            window.location="Bookings.jsp"
        </script>
        <%
    }
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Bookings</title>
    </head>
    <%@include file="Header.jsp" %>
    <body>
         <div align="center" id="tab">
        <h2>Bookings</h2>
        <br> <br>
        <table align='center' border="1" width="50%" >
            <tr>
                <th>Sl.No</th>
                <th>Date</th>
                <th>Customer</th>
                <th>Contact</th>
                <th>Service</th>
                <th>Cost</th>
                <th>Model</th>
                <th>Brand</th>
                <th>Type</th>
                <th>Locality</th>
                <th>Address</th>
                <th>Scheduled</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
            <%                
                int i = 0;
                String selQry = "select * from tbl_booking b inner join tbl_service s on s.service_id=b.service_id inner join tbl_customer c on c.customer_id=b.customer_id inner join tbl_vehicletype v on v.type_id=s.type_id inner join tbl_model m on m.model_id=b.model_id inner join tbl_brand br on br.brand_id=m.brand_id inner join tbl_locality l on l.locality_id=b.locality_id";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            %>
            <tr>
                <td><%=i%></td>

                <td><%=rs.getString("booking_date")%></td>
                <td><%=rs.getString("customer_name")%></td>
                <td><%=rs.getString("customer_phone")%></td>
                <td><%=rs.getString("service_name")%></td>
                <td><%=rs.getString("service_cost")%></td>
                <td><%=rs.getString("model_name")%></td>
                <td><%=rs.getString("brand_name")%></td>
                <td><%=rs.getString("type_name")%></td>
                <td><%=rs.getString("locality_name")%></td>
                <td><%=rs.getString("booking_address")%></td>
                <td>
                    <%
    if (rs.getInt("booking_status") > 0) {
        String vehicletype = "SELECT * FROM tbl_staff WHERE staff_id = " + rs.getString("staff_id");
        ResultSet vt = con.selectCommand(vehicletype);

        // Ensure there is data in the ResultSet
        if (vt.next()) {
            out.println("<p>Staff: " + vt.getString("staff_name") + "</p>");
            out.println("<p>Time: " + rs.getString("booking_fortime") + "</p>");
        } else {
            out.println("<p>No staff found for the given ID.</p>");
        }
    }
%>
</td>
                <td><%
                    if ( rs.getString("booking_status").equals("0")) {
                        out.println("New Request");
                    } else if (rs.getString("booking_status").equals("2") ) {
                        out.println("Booking Scheduled");
                    } else if (rs.getString("booking_status").equals("3")) {
                        out.println("Payment Complete");
                    } else if (rs.getString("booking_status").equals("4")) {
                        out.println("Requested for recheduling");
                    }else if (rs.getString("booking_status").equals("5")) {
                        out.println("Cancelled");
                    }
                    %></td>
                <td>
                    <%
                    if(rs.getString("booking_status").equals("0") || rs.getString("booking_status").equals("4")){
                    %>
                    <a href="AssignStaff.jsp?bid=<%=rs.getString("booking_id")%>">Assign Staff</a>
                    <%
                    }
                    %>
                </td>
            </tr>         
            <%                
                            }


            %> 
        </table>
            <%@include file="Footer.jsp" %>
        </div>
    </body>
</html>

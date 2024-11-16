<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Service Report</title>
</head>
<body>
    

<div class="container mt-5 ">
    <center><h1><u>Service Report</u></h1></center>

    <form name="frm_prod" method="POST" action="" class="mt-4">
        <div class="row mb-3">
            <div class="col-md-3 ">
                <label for="txt_start" class="form-label">Start Date</label>
                <input type="date" class="form-control bg-white" name="txt_start" id="txt_start"  max="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>"required />
            </div>
            <div class="col-md-3">
                <label for="txt_end" class="form-label">End Date</label>
                <input type="date" class="form-controlbg-white" name="txt_end" id="txt_end" max="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" required />
            </div>
            <div class="col-md-3 d-flex align-items-end ">
                <input type="submit" name="btn_submit" id="btn_submit" value="Submit"  class="btn btn-danger" />
            </div>
        </div>
    </form>

    <%
    if (request.getParameter("btn_submit") != null) {
        // Get the parameters from the request
        String start = request.getParameter("txt_start");
        String end = request.getParameter("txt_end");

        // SQL query to fetch bookings and calculate total service cost
        String selQry = "SELECT *"
                        + "FROM tbl_booking b "
                        + "INNER JOIN tbl_service s ON s.service_id = b.service_id "
                        + "INNER JOIN tbl_customer c ON c.customer_id = b.customer_id "
                        + "WHERE b.booking_date BETWEEN '" + start + "' AND '" + end + "'";

        ResultSet rs = con.selectCommand(selQry);
//        out.print(selQry);

        // SQL query to calculate the total amount within the specified date range
        String totalAmountQuery = "SELECT SUM(s.service_cost) AS total_amount "
                                + "FROM tbl_booking b "
                                + "INNER JOIN tbl_service s ON s.service_id = b.service_id "
                                + "WHERE b.booking_date BETWEEN '" + start + "' AND '" + end + "'";
        
        ResultSet rsTotal = con.selectCommand(totalAmountQuery);
        double totalAmount = 0;
        if (rsTotal.next()) {
            totalAmount = rsTotal.getDouble("total_amount");
        }

        int i = 0;
    %>

    <div id="content">
        <table class="table table-bordered mt-4" align="center">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Sno</th>
                    <th scope="col">Name</th>
                    <th scope="col">Contact</th>
                    <th scope="col">Service</th>
                    <th scope="col">Cost</th>
                </tr>
            </thead>
            <tbody>
                <%
                while (rs.next()) {
                    i++;
                %>
                <tr>
                    <th scope="row"><%= i %></th>
                    <td><%= rs.getString("customer_name") %></td>
                    <td><%= rs.getString("customer_phone") %></td>
                    <td><%= rs.getString("service_name") %></td>
                    <td><%= rs.getString("service_cost") %></td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>

        <!-- Display the total amount -->
        <div class="mt-4 text-center">
            <h3><u>Total Amount: </u> <%= totalAmount %></h3>
        </div>
    </div>

    <%
    }
    %>

    <button id="cmd" onClick="printDiv('content')" style="float:right;color:#FFF;background:#0C0;border:none;margin:20px;padding:10px;border-radius:10px">Print</button>

</div>
</body>

<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.debug.js'></script>
<script>
function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
</script>

</html>
<%@include file="Footer.jsp" %>

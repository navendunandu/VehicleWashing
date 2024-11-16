<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>

<%
if(request.getParameter("btn_submit")!=""){
    String service = request.getParameter("sel_service");
    String model = request.getParameter("sel_model");
    String locality = request.getParameter("sel_locality");
    String address = request.getParameter("txt_address");
    String inSQry="INSERT into tbl_booking(service_id,customer_id,booking_date,locality_id,booking_address,model_id) values('" + service + "','" + session.getAttribute("cid") + "',curdate(),'" + locality + "','" + address + "','" + model + "')";
    if(con.executeCommand(inSQry)){
        %>
        <script>
            alert("Request Sent");
            window.location="MyBooking.jsp";
        </script>
        <%
    }
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Service</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEJx3Z0Rz7TmnC5hoGG7mjP1iQ8p90Hl56wIVmAyY5J6hBaQmDA6vYSvh3DgI" crossorigin="anonymous">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .containers {
            max-width: 800px;
            margin-top: 20px;
        }
        .form-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 1.5rem;
        }
        .form-group label {
            font-weight: 500;
        }
        .btn-submit {
            width: 100%;
        }
        textarea {
            width: 100%;
            height: 100px;
        }
    </style>
</head>
<body>
 <h2 class="form-title" align="center">Book a Service</h2>
<div class="container  d-flex justify-content-center">
   
    <form method="POST">
        <input type="hidden" name="txt_brand" id="txt_brand" value="<%=request.getParameter("bid")%>">
        
        <!-- Vehicle Type -->
        <div class="mb-3">
            <label for="sel_vehicletype" class="form-label">Vehicle Type</label>
            <select name="sel_vehicletype" id="sel_vehicletype" class="form-select" onchange="getService(this.value)">
                <option value="">Select Vehicle Type</option>
                <%
                    String vehicletype= "SELECT * from tbl_vehicletype";
                    ResultSet vt = con.selectCommand(vehicletype);
                    while(vt.next()){
                %>
                <option value="<%=vt.getString("type_id")%>">
                    <%=vt.getString("type_name")%>
                </option>
                <%} %>
            </select>
        </div>

        <!-- Model -->
        <div class="mb-3">
            <label for="model" class="form-label">Model</label>
            <select id="model" name="sel_model" class="form-select">
                <option value="">--- Select ---</option>
            </select>
        </div>

        <!-- Service -->
        <div class="mb-3">
            <label for="service" class="form-label">Service</label>
            <select id="service" name="sel_service" class="form-select">
                <option value="">--- Select ---</option>
            </select>
        </div>

        <!-- Date -->
        <div class="mb-3">
            <label for="txt_date" class="form-label">Date</label>
            <input type="date" name="txt_date" class="form-control" min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" required>
        </div>

        <!-- Locality -->
        <div class="mb-3">
            <label for="sel_locality" class="form-label">Locality</label>
            <select name="sel_locality" id="sel_locality" class="form-select">
                <option value="">Select Locality</option>
                <%
                    String locality= "SELECT * from tbl_locality";
                    ResultSet lt = con.selectCommand(locality);
                    while(lt.next()){
                %>
                <option value="<%=lt.getString("locality_id")%>">
                    <%=lt.getString("locality_name")%>
                </option>
                <%} %>
            </select>
        </div>

        <!-- Address -->
        <div class="mb-3">
            <label for="txt_address" class="form-label">Address</label>
            <textarea name="txt_address" class="form-control" required></textarea>
        </div>

        <!-- Submit Button -->
        <button type="submit" name="btn_submit" class="btn btn-primary btn-submit">Submit</button>
    </form>
</div>

<!-- jQuery and Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function getService(id) {
        var brand = document.getElementById("txt_brand").value;

        $.ajax({
            url: "../Assets/AjaxPages/AjaxServices.jsp?id=" + id,
            success: function(html) {
                $("#service").html(html);
            }
        });

        $.ajax({
            url: "../Assets/AjaxPages/AjaxModel.jsp?id=" + id + "&bid=" + brand,
            success: function(html) {
                $("#model").html(html);
            }
        });
    }
</script>

</body>
<%@include file="Footer.jsp" %>
</html>

<%-- 
    Document   : Homepage
    Created on : Oct 18, 2024, 1:30:08 PM
    Author     : robin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@include file="Header.jsp" %>
<%@include file="SessionValidator.jsp" %>
<!DOCTYPE html>

                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-line fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Today Users</p>
                                <% 
                                String User="select COUNT(*) as user from tbl_customer ";
                                System.out.println(User);
                                ResultSet rs=con.selectCommand(User);
                                rs.next();
                                %>
                                <h6 class="mb-0"><%=rs.getString("user") %></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-bar fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Total Booking</p>
                                 <% 
                                String bk="select COUNT(*) as booking from tbl_booking ";
                                System.out.println(bk);
                                ResultSet rs1=con.selectCommand(bk);
                                rs1.next();
                                %>
                                <h6 class="mb-0"><%=rs1.getString("booking") %></h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                            <i class="fa fa-chart-area fa-3x text-primary"></i>
                            <div class="ms-3">
                                <p class="mb-2">Today Staff</p>
                                <% 
                                String st="select COUNT(*) as staff from tbl_staff ";
                                System.out.println(bk);
                                ResultSet rs2=con.selectCommand(st);
                                rs2.next();
                                %>
                                <h6 class="mb-0"><%=rs2.getString("staff") %></h6>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            <!-- Sale & Revenue End -->


            <!-- Sales Chart Start -->
            
            <!-- Sales Chart End -->

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
            <!-- Recent Sales Start -->
            <div class="container-fluid pt-4 px-4">
            <div class="bg-secondary text-center rounded p-4">
                <div class="d-flex align-items-center justify-content-between mb-4">
                    <h6 class="mb-0">Bookings</h6>
                    <a href="Bookings.jsp">Show All</a>
                </div>
                <div class="table-responsive">
                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                        <thead>
                            <tr class="text-white">
                                <th scope="col">#</th>
                                <th scope="col">Date</th>
                                <th scope="col">Customer</th>
                                <th scope="col">Contact</th>
                                <th scope="col">Service</th>
                                <th scope="col">Cost</th>
                                <th scope="col">Model</th>
                                <th scope="col">Brand</th>
                                <th scope="col">Type</th>
                                <th scope="col">Locality</th>
                                <th scope="col">Address</th>
                                <th scope="col">Scheduled</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                int i = 0;
                                String selQry = "select * from tbl_booking b inner join tbl_service s on s.service_id=b.service_id inner join tbl_customer c on c.customer_id=b.customer_id inner join tbl_vehicletype v on v.type_id=s.type_id inner join tbl_model m on m.model_id=b.model_id inner join tbl_brand br on br.brand_id=m.brand_id inner join tbl_locality l on l.locality_id=b.locality_id";
                                ResultSet r3 = con.selectCommand(selQry);
                                while (r3.next()) {
                                    i++;
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=r3.getString("booking_date")%></td>
                                <td><%=r3.getString("customer_name")%></td>
                                <td><%=r3.getString("customer_phone")%></td>
                                <td><%=r3.getString("service_name")%></td>
                                <td><%=r3.getString("service_cost")%></td>
                                <td><%=r3.getString("model_name")%></td>
                                <td><%=r3.getString("brand_name")%></td>
                                <td><%=r3.getString("type_name")%></td>
                                <td><%=r3.getString("locality_name")%></td>
                                <td><%=r3.getString("booking_address")%></td>
                                <td>
                                    <% 
                                        if (r3.getInt("booking_status") > 0) {
                                            String vehicletype = "SELECT * FROM tbl_staff WHERE staff_id = " + r3.getString("staff_id");
                                            ResultSet vt = con.selectCommand(vehicletype);
                                            if (vt.next()) {
                                                out.println("<p>Staff: " + vt.getString("staff_name") + "</p>");
                                                out.println("<p>Time: " + r3.getString("booking_fortime") + "</p>");
                                            } else {
                                                out.println("<p>No staff found for the given ID.</p>");
                                            }
                                        }
                                    %>
                                </td>
                                <td>
                                    <%
                                        String status = r3.getString("booking_status");
                                        if (status.equals("0")) {
                                            out.println("New Request");
                                        } else if (status.equals("2")) {
                                            out.println("Booking Scheduled");
                                        } else if (status.equals("3")) {
                                            out.println("Payment Complete");
                                        } else if (status.equals("4")) {
                                            out.println("Requested for Rescheduling");
                                        } else if (status.equals("5")) {
                                            out.println("Cancelled");
                                        }
                                    %>
                                </td>
                                <td>
                                    <% 
                                        if (status.equals("0") || status.equals("4")) {
                                    %>
                                    <a class="btn btn-sm btn-primary" href="AssignStaff.jsp?bid=<%=rs.getString("booking_id")%>">Assign Staff</a>
                                    <% 
                                        }
                                    %>
                                </td>
                            </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
            <!-- Recent Sales End -->


            <!-- Widgets Start -->
            
            <!-- Widgets End -->
            <%@include  file="Footer.jsp" %>


            
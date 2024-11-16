<%-- 
    Document   : AjaxServices
    Created on : 26 Oct, 2024, 5:54:47 AM
    Author     : Nandu
--%>

<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<option value="">--select--</option>
<%
    String sel="select * from tbl_service where type_id="+request.getParameter("id");
    System.out.println(sel);
    ResultSet rs=con.selectCommand(sel);
    while(rs.next())
    {
        %>
        <option value="<%=rs.getString("service_id")%>"><%=rs.getString("service_name")%> - Rs.<%=rs.getString("service_cost")%></option>
        <%
    }
%>

<%-- 
    Document   : AjaxServices
    Created on : 26 Oct, 2024, 5:54:47 AM
    Author     : Nandu
--%>

<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<option value="">--select--</option>
<%
    String sel="select * from tbl_model where type_id="+request.getParameter("id")+" and brand_id="+request.getParameter("bid");
    
    ResultSet rs=con.selectCommand(sel);
    while(rs.next())
    {
        %>
        <option value="<%=rs.getString("model_id")%>"><%=rs.getString("model_name")%></option>
        <%
    }
%>

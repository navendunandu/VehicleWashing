package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Bookings_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/SessionValidator.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\n');

        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("aid") == null)
        {
            response.sendRedirect("../Guest/Login.jsp");
        }
    
      out.write('\n');

if(request.getParameter("id")!=null){
    String updQry="update tbl_booking set booking_status='"+request.getParameter("st")+"' where booking_id="+request.getParameter("id");
    if(con.executeCommand(updQry)){
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Updated\")\n");
      out.write("            window.location=\"Bookings.jsp\"\n");
      out.write("        </script>\n");
      out.write("        ");

    }
}

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>View Bookings</title>\n");
      out.write("    </head>\n");
      out.write("    ");
      out.write("\n");
      out.write("    <body>\n");
      out.write("         <div align=\"center\" id=\"tab\">\n");
      out.write("        <div align=\"center\" id=\"tab\">\n");
      out.write("        <br><br><br><br><br><br><br>\n");
      out.write("        <h2>Bookings</h2>\n");
      out.write("        <br> <br>\n");
      out.write("        <table align='center' border=\"1\" width=\"50%\" >\n");
      out.write("            <tr>\n");
      out.write("                <th>Sl.No</th>\n");
      out.write("                <th>Date</th>\n");
      out.write("                <th>Customer</th>\n");
      out.write("                <th>Contact</th>\n");
      out.write("                <th>Service</th>\n");
      out.write("                <th>Cost</th>\n");
      out.write("                <th>Model</th>\n");
      out.write("                <th>Brand</th>\n");
      out.write("                <th>Type</th>\n");
      out.write("                <th>Locality</th>\n");
      out.write("                <th>Address</th>\n");
      out.write("                <th>Scheduled</th>\n");
      out.write("                <th>Status</th>\n");
      out.write("                <th>Action</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
                
                int i = 0;
                String selQry = "select * from tbl_booking b inner join tbl_service s on s.service_id=b.service_id inner join tbl_customer c on c.customer_id=b.customer_id inner join tbl_vehicletype v on v.type_id=s.type_id inner join tbl_model m on m.model_id=b.model_id inner join tbl_brand br on br.brand_id=m.brand_id inner join tbl_locality l on l.locality_id=b.locality_id";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    i++;

            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("\n");
      out.write("                <td>");
      out.print(rs.getString("booking_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("customer_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("customer_phone"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("service_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("service_cost"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("model_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("brand_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("type_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("locality_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("booking_address"));
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    ");

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

      out.write("\n");
      out.write("</td>\n");
      out.write("                <td>");

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
                    
      out.write("</td>\n");
      out.write("                <td>\n");
      out.write("                    ");

                    if(rs.getString("booking_status").equals("0") || rs.getString("booking_status").equals("4")){
                    
      out.write("\n");
      out.write("                    <a href=\"AssignStaff.jsp?bid=");
      out.print(rs.getString("booking_id"));
      out.write("\">Assign Staff</a>\n");
      out.write("                    ");

                    }
                    
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>         \n");
      out.write("            ");
                
                            }


            
      out.write(" \n");
      out.write("        </table>\n");
      out.write("            ");
      out.write("\n");
      out.write("        </div>\n");
      out.write("         </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

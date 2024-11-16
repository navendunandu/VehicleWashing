package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class UserList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/Admin/Header.jsp");
    _jspx_dependants.add("/Admin/SessionValidator.jsp");
    _jspx_dependants.add("/Admin/Footer.jsp");
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <title>DarkPan - Bootstrap 5 Admin Template</title>\n");
      out.write("    <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("    <meta content=\"\" name=\"keywords\">\n");
      out.write("    <meta content=\"\" name=\"description\">\n");
      out.write("\n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link href=\"img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("    <!-- Google Web Fonts -->\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap\" rel=\"stylesheet\"> \n");
      out.write("    \n");
      out.write("    <!-- Icon Font Stylesheet -->\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Libraries Stylesheet -->\n");
      out.write("    <link href=\"../Assets/Templates/Admin/lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"../Assets/Templates/Admin/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("    <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("    <link href=\"../Assets/Templates/Admin/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Template Stylesheet -->\n");
      out.write("    <link href=\"../Assets/Templates/Admin/css/style.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"../Assets/Templates/admin.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-fluid position-relative d-flex p-0\">\n");
      out.write("        <!-- Spinner Start -->\n");
      out.write("        <div id=\"spinner\" class=\"show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center\">\n");
      out.write("            <div class=\"spinner-border text-primary\" style=\"width: 3rem; height: 3rem;\" role=\"status\">\n");
      out.write("                <span class=\"sr-only\">Loading...</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Spinner End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Sidebar Start -->\n");
      out.write("        <div class=\"sidebar pe-4 pb-3\">\n");
      out.write("            <nav class=\"navbar bg-secondary navbar-dark\">\n");
      out.write("                <a href=\"index.html\" class=\"navbar-brand mx-4 mb-3\">\n");
      out.write("                    <h3 class=\"text-primary\"><i class=\"fa fa-user-edit me-2\"></i>DarkPan</h3>\n");
      out.write("                </a>\n");
      out.write("                <div class=\"d-flex align-items-center ms-4 mb-4\">\n");
      out.write("                    <div class=\"position-relative\">\n");
      out.write("                        <img class=\"rounded-circle\" src=\"img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                        <div class=\"bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"ms-3\">\n");
      out.write("                        <h6 class=\"mb-0\">Jhon Doe</h6>\n");
      out.write("                        <span>Admin</span>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"navbar-nav w-100\">\n");
      out.write("                    <a href=\"Homepage.jsp\" class=\"nav-item nav-link active\"><i class=\"fa fa-tachometer-alt me-2\"></i>Dashboard</a>\n");
      out.write("                    <div class=\"nav-item dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\"><i class=\"fa fa-laptop me-2\"></i>Basic Datas</a>\n");
      out.write("                        <div class=\"dropdown-menu bg-transparent border-0\">\n");
      out.write("                            <a href=\"Locality.jsp\" class=\"dropdown-item\">Locality</a>\n");
      out.write("                            <a href=\"VehicleType.jsp\" class=\"dropdown-item\">VehicleType</a>\n");
      out.write("                            <a href=\"Brand.jsp\" class=\"dropdown-item\">Brand</a>\n");
      out.write("                            <a href=\"Model.jsp\" class=\"dropdown-item\">Model</a>\n");
      out.write("                            <a href=\"SecurityQuestion.jsp\" class=\"dropdown-item\">Security Question</a>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"Service.jsp\" class=\"nav-item nav-link\"><i class=\"fa fa-th me-2\"></i>Service </a>\n");
      out.write("                    <a href=\"Staffregistration.jsp\" class=\"nav-item nav-link\"><i class=\"fa fa-keyboard me-2\"></i>Staff Registration</a>\n");
      out.write("                    <a href=\"Stafflist.jsp\" class=\"nav-item nav-link\"><i class=\"fa fa-table me-2\"></i>Staff List</a>\n");
      out.write("                    <a href=\"UserList.jsp\" class=\"nav-item nav-link\"><i class=\"fa fa-chart-bar me-2\"></i>User List</a>\n");
      out.write("                    <a href=\"Bookings.jsp\" class=\"nav-item nav-link\"><i class=\"fa fa-chart-bar me-2\"></i>View Bookings</a>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("        <!-- Sidebar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Content Start -->\n");
      out.write("        <div class=\"content\">\n");
      out.write("            <!-- Navbar Start -->\n");
      out.write("            <nav class=\"navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0\">\n");
      out.write("                <a href=\"index.html\" class=\"navbar-brand d-flex d-lg-none me-4\">\n");
      out.write("                    <h2 class=\"text-primary mb-0\"><i class=\"fa fa-user-edit\"></i></h2>\n");
      out.write("                </a>\n");
      out.write("                <a href=\"#\" class=\"sidebar-toggler flex-shrink-0\">\n");
      out.write("                    <i class=\"fa fa-bars\"></i>\n");
      out.write("                </a>\n");
      out.write("                <form class=\"d-none d-md-flex ms-4\">\n");
      out.write("                    <input class=\"form-control bg-dark border-0\" type=\"search\" placeholder=\"Search\">\n");
      out.write("                </form>\n");
      out.write("                <div class=\"navbar-nav align-items-center ms-auto\">\n");
      out.write("                    <div class=\"nav-item dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">\n");
      out.write("                            <i class=\"fa fa-envelope me-lg-2\"></i>\n");
      out.write("                            <span class=\"d-none d-lg-inline-flex\">Message</span>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">\n");
      out.write("                                <div class=\"d-flex align-items-center\">\n");
      out.write("                                    <img class=\"rounded-circle\" src=\"img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                    <div class=\"ms-2\">\n");
      out.write("                                        <h6 class=\"fw-normal mb-0\">Jhon send you a message</h6>\n");
      out.write("                                        <small>15 minutes ago</small>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">\n");
      out.write("                                <div class=\"d-flex align-items-center\">\n");
      out.write("                                    <img class=\"rounded-circle\" src=\"img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                    <div class=\"ms-2\">\n");
      out.write("                                        <h6 class=\"fw-normal mb-0\">Jhon send you a message</h6>\n");
      out.write("                                        <small>15 minutes ago</small>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">\n");
      out.write("                                <div class=\"d-flex align-items-center\">\n");
      out.write("                                    <img class=\"rounded-circle\" src=\"img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                                    <div class=\"ms-2\">\n");
      out.write("                                        <h6 class=\"fw-normal mb-0\">Jhon send you a message</h6>\n");
      out.write("                                        <small>15 minutes ago</small>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </a>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item text-center\">See all message</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"nav-item dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">\n");
      out.write("                            <i class=\"fa fa-bell me-lg-2\"></i>\n");
      out.write("                            <span class=\"d-none d-lg-inline-flex\">Notificatin</span>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">\n");
      out.write("                                <h6 class=\"fw-normal mb-0\">Profile updated</h6>\n");
      out.write("                                <small>15 minutes ago</small>\n");
      out.write("                            </a>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">\n");
      out.write("                                <h6 class=\"fw-normal mb-0\">New user added</h6>\n");
      out.write("                                <small>15 minutes ago</small>\n");
      out.write("                            </a>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">\n");
      out.write("                                <h6 class=\"fw-normal mb-0\">Password changed</h6>\n");
      out.write("                                <small>15 minutes ago</small>\n");
      out.write("                            </a>\n");
      out.write("                            <hr class=\"dropdown-divider\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item text-center\">See all notifications</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"nav-item dropdown\">\n");
      out.write("                        <a href=\"#\" class=\"nav-link dropdown-toggle\" data-bs-toggle=\"dropdown\">\n");
      out.write("                            <img class=\"rounded-circle me-lg-2\" src=\"img/user.jpg\" alt=\"\" style=\"width: 40px; height: 40px;\">\n");
      out.write("                            <span class=\"d-none d-lg-inline-flex\">Jhon Doe</span>\n");
      out.write("                        </a>\n");
      out.write("                        <div class=\"dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">My Profile</a>\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">Settings</a>\n");
      out.write("                            <a href=\"#\" class=\"dropdown-item\">Log Out</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- Navbar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Sale & Revenue Start -->\n");
      out.write("            <div class=\"container-fluid pt-4 px-4\">");
      out.write('\n');

        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("aid") == null)
        {
            response.sendRedirect("../Guest/Login.jsp");
        }
    
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

  
   
   if(request.getParameter("did")!=null){
       String del = "delete from tbl_customer where customer_id="+request.getParameter("did");
       if(con.executeCommand(del)){
       
      out.write("\n");
      out.write("          <script>\n");
      out.write("               alert(\"Deleted\");\n");
      out.write("               window.location=\"UserList.jsp\";\n");
      out.write("           </script>\n");
      out.write("           ");

       }
       else{
           
      out.write("\n");
      out.write("           <script>\n");
      out.write("               alert(\"Failed\");\n");
      out.write("               window.location=\"UserList.jsp\";\n");
      out.write("           </script>\n");
      out.write("           ");

       }
   }
    
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div align=\"center\" id=\"tab\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Email</th>\n");
      out.write("                    <th>Phone</th>\n");
      out.write("                    <th>Password</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                 ");

   String qry="SELECT * from tbl_customer";
   ResultSet rs = con.selectCommand(qry);
     int i = 0;
   while(rs.next()){
       i++;
   
   
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("            <a href=\"Admin.jsp\"></a>\n");
      out.write("                    <td>");
      out.print(rs.getString("customer_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("customer_email"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("customer_phone"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("customer_password"));
      out.write("</td>\n");
      out.write("                    <td><a href='UserList.jsp?did=");
      out.print(rs.getString("customer_id"));
      out.write("'>Delete</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");
}
   
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write(" ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Footer Start -->\n");
      out.write("            <div class=\"container-fluid pt-4 px-4\">\n");
      out.write("                <div class=\"bg-secondary rounded-top p-4\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-12 col-sm-6 text-center text-sm-start\">\n");
      out.write("                            &copy; <a href=\"#\">Your Site Name</a>, All Right Reserved. \n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12 col-sm-6 text-center text-sm-end\">\n");
      out.write("                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from \"https://htmlcodex.com/credit-removal\". Thank you for your support. ***/-->\n");
      out.write("                            Designed By <a href=\"https://htmlcodex.com\">HTML Codex</a>\n");
      out.write("                            <br>Distributed By: <a href=\"https://themewagon.com\" target=\"_blank\">ThemeWagon</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!-- Footer End -->\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <!-- Content End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top -->\n");
      out.write("        <a href=\"#\" class=\"btn btn-lg btn-primary btn-lg-square back-to-top\"><i class=\"bi bi-arrow-up\"></i></a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- JavaScript Libraries -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/chart/chart.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/easing/easing.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/waypoints/waypoints.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/tempusdominus/js/moment.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/tempusdominus/js/moment-timezone.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Admin/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Template Javascript -->\n");
      out.write("    <script src=\"../Assets/Templates/Admin/js/main.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write('\n');
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

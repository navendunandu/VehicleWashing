package org.apache.jsp.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class MyBooking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/Customer/Header.jsp");
    _jspx_dependants.add("/Customer/SessionValidator.jsp");
    _jspx_dependants.add("/Customer/Footer.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html class=\"no-js\" lang=\"zxx\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Vehicle</title>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    <!-- <link rel=\"manifest\" href=\"site.webmanifest\"> -->\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"../Assets/Templates/Main/img/favicon.png\">\n");
      out.write("    <!-- Place favicon.ico in the root directory -->\n");
      out.write("\n");
      out.write("    <!-- CSS here -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/owl.carousel.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/magnific-popup.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/themify-icons.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/nice-select.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/flaticon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/gijgo.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/animate.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/slicknav.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/style.css\">\n");
      out.write("    <link href=\"../Assets/Templates/form.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/css/responsive.css\"> -->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <!--[if lte IE 9]>\n");
      out.write("            <p class=\"browserupgrade\">You are using an <strong>outdated</strong> browser. Please <a href=\"https://browsehappy.com/\">upgrade your browser</a> to improve your experience and security.</p>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    <header>\n");
      out.write("        <div class=\"header-area \">\n");
      out.write("            <div class=\"header-top_area\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-lg-6 col-md-8\">\n");
      out.write("                            <div class=\"short_contact_list\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li><a href=\"#\">+8943283079</a></li>\n");
      out.write("                                    <li><a href=\"#\">24/7</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-lg-6 col-md-4 \">\n");
      out.write("                            <div class=\"social_media_links\">\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <i class=\"fa fa-facebook\"></i>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <i class=\"fa fa-pinterest-p\"></i>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <i class=\"fa fa-google-plus\"></i>\n");
      out.write("                                </a>\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <i class=\"fa fa-linkedin\"></i>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"sticky-header\" class=\"main-header-area\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row align-items-center\">\n");
      out.write("                        <div class=\"col-xl-3 col-lg-3\">\n");
      out.write("                            <div class=\"logo\">\n");
      out.write("                                <a href=\"index.html\">\n");
      out.write("                                    <img src=\"../Assets/Templates/Main/img/banner/mainlogo.png\" height=\"200px\" alt=\"\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-xl-9 col-lg-9\">\n");
      out.write("                            <div class=\"main-menu  d-none d-lg-block\">\n");
      out.write("                                <nav>\n");
      out.write("                                    <ul id=\"navigation\">\n");
      out.write("                                        <li><a  href=\"Homepage.jsp\">home</a></li>\n");
      out.write("                                        <li><a href=\"My Profile.jsp\">MyProfile</a></li>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        <li><a href=\"\">services</a></li>\n");
      out.write("                                        <li><a href=\"\">My ServiceBooking</a></li>\n");
      out.write("                                        <li><a href=\"../Guest/Logout.jsp\">Logout</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </nav>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-12\">\n");
      out.write("                            <div class=\"mobile_menu d-block d-lg-none\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write('\n');

        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("cid") == null)
        {
            response.sendRedirect("../Guest/Login.jsp");
        }
    
      out.write('\n');

if(request.getParameter("id")!=null){
    String updQry="update tbl_booking set booking_status='"+request.getParameter("st")+"' where booking_id="+request.getParameter("id");
    System.out.print(updQry);
    if(con.executeCommand(updQry)){
        
      out.write("\n");
      out.write("        <script>\n");
      out.write("            alert(\"Updated\")\n");
      out.write("            //window.location=\"MyBooking.jsp\"\n");
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
      out.write("        <div align=\"center\" id=\"tab\">\n");
      out.write("        <br><br><br><br><br><br><br>\n");
      out.write("        <h2>Bookings</h2>\n");
      out.write("        <br> <br>\n");
      out.write("        <table align='center' border=\"1\" width=\"50%\" >\n");
      out.write("            <tr>\n");
      out.write("                <th>Sl.No</th>\n");
      out.write("                <th>Date</th>\n");
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
                String selQry = "select * from tbl_booking b inner join tbl_service s on s.service_id=b.service_id inner join tbl_vehicletype v on v.type_id=s.type_id inner join tbl_model m on m.model_id=b.model_id inner join tbl_brand br on br.brand_id=m.brand_id inner join tbl_locality l on l.locality_id=b.locality_id where customer_id="+session.getAttribute("cid");
//                 out.println(selQry);
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
      out.write("                <td>");

                    if(rs.getInt("booking_status")>0){
                        String vehicletype= "SELECT * from tbl_staff where staff_id="+rs.getString("staff_id");
                        System.out.println(vehicletype);
                        ResultSet vt = con.selectCommand(vehicletype);
                        vt.next();
                        out.println("<p>Staff: "+vt.getString("staff_name"));
                        out.println("<p>Time "+rs.getString("booking_fortime"));
                    }
                
      out.write("</td>\n");
      out.write("                <td>");

                    if ( rs.getString("booking_status").equals("0")) {
                        out.println("Request Send");
                    } else if (rs.getString("booking_status").equals("2") ) {
                        out.println("Booking Scheduled, Pay to continue");
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

                    if ( rs.getString("booking_status").equals("1")) {
                                 
                    
      out.write("\n");
      out.write("                    <a href=\"Payment.jsp?bid=");
      out.print(rs.getString("booking_id"));
      out.write("\">Pay Now</a> || <a href=\"MyBooking.jsp?id=");
      out.print(rs.getString("booking_id"));
      out.write("st=4\">Reschedule</a> || <a href=\"MyBooking.jsp?id=");
      out.print(rs.getString("booking_id"));
      out.write("&st=5\">Cancel</a>\n");
      out.write("                   \n");
      out.write("                    ");

                    }
                    else if( rs.getString("booking_status").equals("4")) {
                                 
                    
      out.write("\n");
      out.write("                    <a href=\"MyBooking.jsp?id=");
      out.print(rs.getString("booking_id"));
      out.write("&st=5\">Cancel</a>\n");
      out.write("                    ");

                    }
                    else if( rs.getString("booking_status").equals("3")) {
                                 
                    
      out.write("\n");
      out.write("                    <a href=\"Rating.jsp\">Review</a>\n");
      out.write("                    ");

                    }
                    
      out.write("\n");
      out.write("                   \n");
      out.write("                </td>\n");
      out.write("                ");

                
                
      out.write("\n");
      out.write("            </tr>         \n");
      out.write("            ");
                }


            
      out.write(" \n");
      out.write("        </table>\n");
      out.write("            ");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!-- footer_start  -->\n");
      out.write("    <footer class=\"footer\">\n");
      out.write("        <div class=\"footer_top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-3 col-md-6 col-lg-3\">\n");
      out.write("                        <div class=\"footer_widget\">\n");
      out.write("                            <h3 class=\"footer_title\">\n");
      out.write("                                Contact Us\n");
      out.write("                            </h3>\n");
      out.write("                            <ul class=\"address_line\">\n");
      out.write("                                <li>+8943283079</li>\n");
      out.write("                                <li><a href=\"#\">robinsalomonr6407@gmail.com</a></li>\n");
      out.write("                                <li>Muvattupuzha,Kerala,India</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xl-3  col-md-6 col-lg-3\">\n");
      out.write("                        <div class=\"footer_widget\">\n");
      out.write("                            <h3 class=\"footer_title\">\n");
      out.write("                                Our Servces\n");
      out.write("                            </h3>\n");
      out.write("                            <ul class=\"links\">\n");
      out.write("                                <li><a href=\"#\">Interior Washing</a></li>\n");
      out.write("                                <li><a href=\"#\">Exterior Washing</a></li>\n");
      out.write("                                \n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xl-3  col-md-6 col-lg-3\">\n");
      out.write("                        <div class=\"footer_widget\">\n");
      out.write("                            <h3 class=\"footer_title\">\n");
      out.write("                                Quick Link\n");
      out.write("                            </h3>\n");
      out.write("                            <ul class=\"links\">\n");
      out.write("                                <li><a href=\"#\">About Us</a></li>\n");
      out.write("                                <li><a href=\"#\">Privacy Policy</a></li>\n");
      out.write("                                <li><a href=\"#\">Terms of Service</a></li>\n");
      out.write("                                <li><a href=\"#\">Login info</a></li>\n");
      out.write("                                <li><a href=\"#\">Knowledge Base</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-xl-3 col-md-6 col-lg-3 \">\n");
      out.write("                        <div class=\"footer_widget\">\n");
      out.write("                            <div class=\"footer_logo\">\n");
      out.write("                                <a href=\"#\">\n");
      out.write("                                    <img src=\"../Assets/Templates/Main/img/banner/mainlogo.png\" height=\"200px\" alt=\"\">\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                            <p class=\"address_text\">Muvattupuzha,Kerala,India\n");
      out.write("                            </p>\n");
      out.write("                            <div class=\"socail_links\">\n");
      out.write("                                <ul>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <i class=\"ti-facebook\"></i>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <i class=\"ti-pinterest\"></i>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <i class=\"fa fa-google-plus\"></i>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">\n");
      out.write("                                            <i class=\"fa fa-linkedin\"></i>\n");
      out.write("                                        </a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"copy-right_text\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"bordered_1px\"></div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-xl-12\">\n");
      out.write("                        <p class=\"copy_right text-center\">\n");
      out.write("                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"ti-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    <!-- footer_end  -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- JS here -->\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/vendor/modernizr-3.5.0.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/vendor/jquery-1.12.4.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/popper.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/owl.carousel.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/isotope.pkgd.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/ajax-form.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/waypoints.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.counterup.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/imagesloaded.pkgd.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/scrollIt.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.scrollUp.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/wow.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/nice-select.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.slicknav.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/plugins.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/gijgo.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!--contact js-->\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/contact.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.ajaxchimp.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.form.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/jquery.validate.min.js\"></script>\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/mail-script.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"../Assets/Templates/Main/js/main.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $('#datepicker').datepicker({\n");
      out.write("            iconsLibrary: 'fontawesome',\n");
      out.write("            disableDaysOfWeek: [0, 0],\n");
      out.write("        //     icons: {\n");
      out.write("        //      rightIcon: '<span class=\"fa fa-caret-down\"></span>'\n");
      out.write("        //  }\n");
      out.write("        });\n");
      out.write("        $('#datepicker2').datepicker({\n");
      out.write("            iconsLibrary: 'fontawesome',\n");
      out.write("            icons: {\n");
      out.write("             rightIcon: '<span class=\"fa fa-caret-down\"></span>'\n");
      out.write("         }\n");
      out.write("\n");
      out.write("        });\n");
      out.write("        var timepicker = $('#timepicker').timepicker({\n");
      out.write("         format: 'HH.MM'\n");
      out.write("     });\n");
      out.write("    </script>\n");
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

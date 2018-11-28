package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <title>Hello World</title>\n");
      out.write("\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("    <!-- FontAwesome CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Swiper CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/swiper.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <script src=\"js/custom.js\"></script>   \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("      <div class=\"header-bar\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row align-items-center\">\n");
      out.write("                <div class=\"col-10 col-lg-2 order-lg-1\">\n");
      out.write("                    <div class=\"site-branding\">\n");
      out.write("                        <div class=\"site-title\">\n");
      out.write("                            <a href=\"#\"><img src=\"images/logo.png\" alt=\"logo\"></a>\n");
      out.write("                        </div><!-- .site-title -->\n");
      out.write("                    </div><!-- .site-branding -->\n");
      out.write("                </div><!-- .col -->\n");
      out.write("\n");
      out.write("                <div class=\"col-2 col-lg-7 order-3 order-lg-2\">\n");
      out.write("                    <nav class=\"site-navigation\">\n");
      out.write("                        <div class=\"hamburger-menu d-lg-none\">\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                        </div><!-- .hamburger-menu -->\n");
      out.write("\n");
      out.write("                        </nav></div>\n");
      out.write("                    <div class=\"col-lg-3 d-none d-lg-block order-2 order-lg-3\">\n");
      out.write("                    <div class=\"buy-tickets\">\n");
      out.write("                        <a class=\"btn gradient-bg\" href=\"home.html\">Back </a>\n");
      out.write("                    </div><!-- .buy-tickets -->\n");
      out.write("                </div>\n");
      out.write("                </div><!-- .col -->\n");
      out.write("        </div></div>\n");
      out.write("<div class=\"homepage-next-events\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("            <div class=\"next-events-section-header\">\n");
      out.write("                <h2 class=\"entry-title\">Upcoming Events</h2>\n");
      out.write("            </div>\n");
      out.write("        <div>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <td><h3><b>Event Name</b></h3></td>\n");
      out.write("                <td><h3><b>Event Venue</b></h3></td>\n");
      out.write("                <td><h3><b>Event Date</b></h3></td>\n");
      out.write("                <td><h3><b>Booked By</b></h3></td>\n");
      out.write("            </tr>\n");
      out.write("              ");
  
                  try{
                      Class.forName("com.mysql.cj.jdbc.Driver");
                  
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mehak", "root", "");
                    String query="select * from event1";
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery(query);
                    while(rs.next())
                    { 
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(rs.getString("ename"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("evenue"));
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
}
catch(Exception e)
{
e.printStackTrace();
} 

      out.write("\n");
      out.write("        </table>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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

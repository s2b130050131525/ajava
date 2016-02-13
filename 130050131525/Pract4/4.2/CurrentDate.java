import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
 
// Extend HttpServlet class
public class CurrentDate extends HttpServlet {
 
  public void doGet(HttpServletRequest request,
                    HttpServletResponse response)
            throws ServletException, IOException
  {
      // Set response content type
      response.setContentType("text/html");
 
      PrintWriter out = response.getWriter();
      String title = "Display Current Date & Time";
      Date date = new Date();
     
      out.println("<html>\n" +
        "<head><title>" + title + "</title></head>\n" +
        "<body bgcolor=\"#f0f0f0\">\n" +
        "<h1 align=\"center\">" + title + "</h1>\n" +
        "<h2 align=\"center\">" + date.toString() + "</h2>\n" +
        "</body></html>");
  }
}

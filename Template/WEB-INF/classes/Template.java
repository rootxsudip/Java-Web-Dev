import java.io.IOException;
import javax.servlet.*;
import java.io.PrintWriter;
import java.util.Date;

public class Template implements Servlet {
    // Life Cycle Methods

    ServletConfig conf;

    public void init(ServletConfig conf) {
        this.conf = conf;
        System.out.println("Creating object...");
    }

    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        System.out.println("Servicing......");
        // Set the content type of the response
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>Hello from java servlet</h1>");
        out.println("<h1>Today's date and time is "+new Date().toString()+"</h1>");
    }

    public void destroy() {
        System.out.println("Going to destroy to servlet objects");
    }

    // Non life cycle methods

    public ServletConfig getServletConfig() {
        return this.conf;
    }

    public String getServletInfo() {
        return "This servlet is created by rootxsudip";
    }
}
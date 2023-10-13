Servlets are server side component part of the servlet api in java which can respond to http request and generate response based on it. There are many servlets in servlet api.  
For handling java based web apps http servlets are used to handle http requests.  
**HttpServlet:**
HttpServlet is a class in Java that provides a framework for handling HTTP requests and generating HTTP responses. It's part of the Java Servlet API, which is used for building web applications in Java.  

**Key aspects:**
1. Inheritance:  
HttpServlet is an abstract class that extends the GenericServlet class, which in turn implements the Servlet interface. This hierarchy provides a basic structure for building web applications.
2. Lifecycle Methods:  
Servlets have a well-defined lifecycle, and HttpServlet provides methods to handle this lifecycle:
   * init(ServletConfig config): This method is called once when the servlet is initialized. You can perform one-time initialization tasks here.
   * service(HttpServletRequest request, HttpServletResponse response): This method is called for each HTTP request and is where you handle the request and generate the response.
   * destroy(): This method is called when the servlet is being taken out of service. You can perform cleanup tasks here.
3. HTTP Methods:  
Servlets typically respond to various HTTP methods, such as GET, POST, PUT, and DELETE. The service method of HttpServlet is responsible for dispatching requests to the appropriate method based on the HTTP method used in the request.
4. Request and Response Handling:  
   Servlets have access to HttpServletRequest and HttpServletResponse objects, which allow them to read incoming request data (e.g., parameters, headers) and send response data (e.g., HTML content, headers) back to the client.
5. Configuring Servlet:  
Servlets can be configured using the web.xml deployment descriptor or annotations (with Java EE 6 and later). Configuration includes specifying the URL patterns to which the servlet should respond and other initialization parameters.
6. URL Mapping:  
Servlets are typically mapped to specific URLs. The URL mapping defines which servlet should handle requests for specific URLs. This is typically done in the deployment descriptor or using annotations.

Example of HttpServlet:  
```
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class MyServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Hello, Servlet!</h1>");
        out.println("</body></html>");
    }
}

```

Cookies in servlets are small pieces of data that a server sends to a client's web browser, and the browser stores this data locally. Cookies are often used for session management, user tracking, and maintaining user-specific information across multiple requests and visits to a website. In servlets, you can create, send, and receive cookies to store and retrieve data.

Here's an example of how to work with cookies in a servlet:  
**web.xml**
```
<?xml version="1.0" encoding="UTF-8"?>
<web-app>
    <servlet>
        <servlet-name>Servlet1</servlet-name>
        <servlet-class>S1</servlet-class>
    </servlet>
    <servlet>
        <servlet-name>Servlet2</servlet-name>
        <servlet-class>S2</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>Servlet1</servlet-name>
        <url-pattern>/S1</url-pattern>
    </servlet-mapping>
    <servlet-mapping>
        <servlet-name>Servlet2</servlet-name>
        <url-pattern>/S2</url-pattern>
    </servlet-mapping>

    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
        <welcome-file>index.xtml</welcome-file>
        <welcome-file>index.htm</welcome-file>
        <welcome-file>index.jsp</welcome-file>
    </welcome-file-list>

</web-app>
```

**index.html**
```
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Session Management</title>
</head>

<body>
    <form action="./S1" method="post">
        <input type="text" name="name" placeholder="Enter your name" style="font-size: 20px;">
        <button type="submit" style="font-size: 20px;">Go to Servlet1</button>
    </form>
</body>

</html>
```

1. Creating and Sending Cookies:  
You can create cookies in a servlet and send them to the client's browser using the HttpServletResponse object. Here is the example, we'll create a cookie that stores the user's name and set it to expire after 24 hours.  
**S1.java**
```
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class S1 extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html; charset=UTF-8");
        try {
            PrintWriter out = res.getWriter();
            out.println("<title>Servlet1</title>");
            String fname = req.getParameter("name");
            out.println("<h1>Hello, " + fname + " welcome to our website");
            out.println("<p><a href='./S2'>Go to Servlet2</a></p>");

            // Create a cookie
            Cookie c = new Cookie("user_name", fname);

            // Set the cookie's maximum age to 24 hours (in seconds)
            c.setMaxAge(24 * 60 * 60);

            // Add the cookie to the response
            res.addCookie(c);

        } catch (Exception e) {
            // TODO: handle exception
        }
    }
}

```

2. Receiving and Using Cookies:
To receive and use cookies in a servlet, you can access them from the HttpServletRequest object. In this example, we'll retrieve the "username" cookie and display its value:
S2.java
```
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class S2 extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html; charset=UTF-8");
        try {
            PrintWriter out = res.getWriter();
            out.println("<title>Servlet1</title>");

            // Getting all the cookies
            Cookie[] cookies = req.getCookies();

            boolean f = false;
            String name = "";

            if (cookies == null) {
                out.println("<h1>Go to the homepage and submit your name</h1>");
                return;
            } else {
                for (Cookie c : cookies) {
                    String fname = c.getName();
                    if (fname.equals("user_name")) {
                        f = true;
                        name = c.getValue();
                    }
                }
            }

            if (f) {
                out.println("<h1>Hello, " + name + " welcome back our website</h1>");
                out.println("<h1>Thankyou</h1>");
            } else {
                out.println("<h1>Go to the homepage and submit your name</h1>");
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
    }
}

```

In this example:
* The doPost method of the servlet(S1.java) creates a cookie with the name "user_name" using an user given value in line 16 and sets its maximum age to 24 hours in line 19.
* The cookie is then added to the response using response.addCookie(cookie).
* In the another servlet retrived the cookies using request.getCookies() from the HttpServletRequest object.
* If a "user_name" cookie is found, the servlet retrieves its value and sends a welcome message to the client. Otherwise, it informs the client to submit the name in homepage.

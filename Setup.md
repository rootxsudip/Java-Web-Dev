## Requirements:

Tomcat 9.0, vscode, java, Oracle 21c

### Oracle Database Setup

If you want to use oracle database in tomcat

Place your appropriate jdbc.jar for Oracle version in tomcat’s lib folder

- ojdbc8.jar can used for oracle 21c

Tip:

If you get error while trying to connect the database insert this code before connecting:

```
try {
            Class.forName ("oracle.jdbc.OracleDriver");
     } catch (ClassNotFoundException e) {
            e.printStackTrace();
}
```

### Servlet api Setup

1. Copy the servlet path which is like this: 

```
C:\Program Files\Apache Software Foundation\Tomcat 9.0\lib\servlet-api.jar
```

1. Click windows button and search edit windoes env.., you should see the option
2. Click new:
    1. Variable name → CLASSPATH
    2. Variable value → servlet-api path
    3. Setup Done

Oracle JDBC PATH

- Set the jdbc path like above

Steps:

1. Make your project folder inside the tomcat folder’s webapp folder
2. Necessary files and folder:
    1. WEB-INF
        1. It has one web.xml file
        2. lib folder
        3. classes folder
    2. index.html

Example codes:

index.html

```
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>

<body>
    <form action="./Hello" method="get">
        Name: <input type="text" name="name" id="name"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>

</html>
```

web.xml

```
<?xml version="1.0" encoding="UTF-8"?>
<web-app>
    <servlet>
        <servlet-name>Hello</servlet-name>
        <servlet-class>Hello</servlet-class>
    </servlet>

    <servlet-mapping>
        <servlet-name>Hello</servlet-name>
        <url-pattern>/Hello</url-pattern>
    </servlet-mapping>

    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
        <welcome-file>index.xtml</welcome-file>
        <welcome-file>index.htm</welcome-file>
        <welcome-file>index.jsp</welcome-file>
    </welcome-file-list>

</web-app>
```

[hello.java](http://hello.java) inside the classes

```
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;

public class Hello implements Servlet {

    public void init(ServletConfig sc) throws ServletException {
        // Initialization code, if needed
    }

    public ServletConfig getServletConfig() {
        return null;
    }

    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            PrintWriter out = res.getWriter();
            out.println("Hello " + name);
        } catch (IOException e) {
            // Handle the IOException if it occurs
            res.setContentType("text/plain");
            PrintWriter errorOut = res.getWriter();
            errorOut.println("An error occurred: " + e.getMessage());
        }
    }

    public String getServletInfo() {
        return null;
    }

    public void destroy() {
        // Cleanup code, if needed
    }
}
```

Compile the java file with javac in classes folder

```
javac file.java
```

If you get error like **java.lang.UnsupportedClassVersionError** when accessing the file in tomcat: use this command

```
javac --release 8 .\file.java
```

Now, this program should work

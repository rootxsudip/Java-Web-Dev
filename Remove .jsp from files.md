#### Example web.xml
```
<?xml version="1.0" encoding="UTF-8"?>
<web-app>
      <servlet>
        <servlet-name>login</servlet-name>
        <jsp-file>login.jsp</jsp-file>
    </servlet>

    <servlet-mapping>
        <servlet-name>login</servlet-name>
        <url-pattern>/login</url-pattern>
    </servlet-mapping>


    <welcome-file-list>
        <welcome-file>index.html</welcome-file>
        <welcome-file>index.xtml</welcome-file>
        <welcome-file>index.htm</welcome-file>
        <welcome-file>index.jsp</welcome-file>
    </welcome-file-list>

</web-app>
```

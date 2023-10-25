JSP Implicit Objects are created during the translation phase of JSP to the servlet.
* These objects can be directly used in scriplets that goes in the service method.
* They are created automatically by the container and they can be accessed using objects

#### Example:
index.jsp
```
<%
  out.println("This line is printed from implicit object");
  request.getParameter("");
  response.sendRedirect("");
  //config(ServletConfig);
  //application(ServletContext);
  //session
  //session.setAttribute("name",23);
  //page: current jsp page
  //exception: Throwable...
  //pageContext: PageContent
%>
```

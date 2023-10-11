In java, there is a package which is called javax.servlet.* it has many methods using those an user can handle website requests.

### Servlet Interface Methods:
1. public abstract void init(javax.servlet.ServletConfig)  
**Description:** The init(ServletConfig config) method is part of the javax.servlet.Servlet interface in Java, which is a core component of the Java Servlet API. This method is used to initialize a servlet before it can handle client requests. Here's an explanation of the method:  
    public: This modifier specifies that the init method is accessible from any class.  
    abstract: This modifier indicates that the init method is declared in the Servlet interface as an abstract method. Abstract methods are meant to be implemented by classes that implement the interface.  
    void: The return type of the init method is void, which means it does not return any value.  
    init(javax.servlet.ServletConfig config): This is the method signature. The init method takes one parameter, which is an object of type javax.servlet.ServletConfig. The ServletConfig object provides configuration information to the servlet and is used to access initialization parameters and other servlet-related configuration data.    
2. public ServletConfig getServletConfig();  
**Description**: The getServletConfig method allows a servlet to access its configuration information, which includes initialization parameters defined in the web application's deployment descriptor (web.xml). The ServletConfig object contains methods for retrieving these initialization parameters, among other things.  
3. public void service(javax.servlet.ServletRequest,javax.servlet.ServletResponse)  
**Description:** This method is the main entry point for handling client requests in a servlet.
The purpose of the service method is to process client requests and generate responses. When a client sends an HTTP request to the servlet, the servlet container (such as Tomcat or Jetty) calls the service method to handle the request. The ServletRequest object (request) provides information about the incoming request, and the ServletResponse object (response) is used to construct and send the response back to the client.  
4. public abstract java.lang.String getServletInfo();  
**Description:** This method is used to obtain information about the servlet, specifically a string that provides information about the servlet's purpose or other details.
The purpose of the getServletInfo method is to provide information about the servlet, typically in the form of a textual description. This information can be used, for example, to document the servlet's purpose, version, or any other relevant details.  
5. public abstract void destroy();  
**Description:** The purpose of the destroy method is to allow a servlet to clean up resources, close connections, and perform any other necessary tasks before the servlet is removed from service. Servlet containers typically call the destroy method when they are shutting down or when the servlet is being removed from the application, such as during a redeployment.  

### Lifecycle Methods:
1. public abstract void init(javax.servlet.ServletConfig)
2. public void service(javax.servlet.ServletRequest,javax.servlet.ServletResponse)
3. public abstract void destroy();

When we create a user defined class we override the interface methods
Ex:
class MyServlet implements Servlet{
  //Override all methods
}

After making our java program, we mapped the proram with urls pattern via web.xml

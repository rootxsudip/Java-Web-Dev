JavaServer Pages (JSP) is a technology for developing web pages that support dynamic content. JSP pages consist of a mix of HTML and Java code, and they are processed by a JSP engine on the server to generate dynamic web pages.
Here's an example of a simple JSP page with important tags:
```
<!DOCTYPE html>
<html>
<head>
    <title>Simple JSP Example</title>
</head>
<body>
    <h1>Welcome to My JSP Page</h1>
    
    <%-- This is a JSP comment. --%>
    
    <%
        // This is Java code within a scriptlet tag
        String name = "Elliot Alderson";
        out.println("Hello, " + name);
    %>
    
    <p>Today's date: <%= new java.util.Date() %></p>
    
    <ul>
        <% for (int i = 1; i <= 5; i++) { %>
            <li>Item <%= i %></li>
        <% } %>
    </ul>
    
    <%
        // You can also define methods and use them
        String greetUser(String username) {
            return "Hello, " + username;
        }
    %>
    
    <p><%= greetUser("Alice") %></p>
    
</body>
</html>

```

In this example:
1. <%-- ... --%>: This is a JSP comment, which is not included in the output HTML. It's used for documentation or comments within the JSP code.
2. <% ... %>: These are scriptlet tags, where you can embed Java code directly. In the example, we declare a variable name and use out.println to print text to the HTML page.
3. <%= ... %>: This is an expression tag, which is used to evaluate and output Java expressions directly in the HTML. In the example, it prints the current date and iterates over a loop to generate an unordered list.

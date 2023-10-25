#### Example of using some jstl functions:
func.jsp
```
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>JSTL Example</title>
        </head>

        <body>
            <h1>Functions Example</h1>
            <h3>
                <c:set var="name" value="rootxsudip"></c:set>
            </h3>
            <h3>
                <c:out value="${name}"></c:out>
            </h3>
            <h3>Length of name is <c:out value="${fn:length(name)}"></c:out>
            </h3>
            <h3>Uppercase of name is <c:out value="${fn:toUpperCase(name)}"></c:out>
            </h3>
            <h3>Check if name is 'rootxsudip': <c:out value="${fn:contains(name,'rootxsudip')}"></c:out>
            </h3>
        </body>

        </html>
```

#### Resources:  
https://www.geeksforgeeks.org/jstl-function-tags/

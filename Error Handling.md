Handle runtime errors in jsp by the followling the below examples
#### Steps:
* Create error page
* Reference the error in another page which can generate error

error.jsp
```
<%@page isErrorPage="true" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Error</title>
        <style>
            * {
                margin: 0px;
                padding: 0px;
            }
        </style>
    </head>

    <body>
        <div style="padding: 20px;">
            <h1>Something went wrong!</h1>
            <p>
                <%= exception %>
            </p>
        </div>
    </body>

    </html>
```

Yourpage.jsp
```
<%@page errorPage="error.jsp" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Division</title>
    </head>

    <body>
        <%! int n1=200; int n2=0; %>
            <% int division=n1/n2; %>
                <h1>Division = <%= division %>
                </h1>
    </body>

    </html>
```


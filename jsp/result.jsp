<%@page errorPage="error.jsp" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Result</title>
    </head>

    <body>
        <% String n1=request.getParameter("n1"); String n2=request.getParameter("n2"); int a=Integer.parseInt(n1); int
            b=Integer.parseInt(n2); int d=a/b; %>
            <h1>
                Division = <%= d %>
            </h1>
    </body>

    </html>
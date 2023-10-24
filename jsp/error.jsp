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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body>
        <div class="container p-3 text-center">
            <img src="img/error.png" class="img-fluid">
            <h1 display="3">Something went wrong!</h1>
            <a class="btn btn-outline-primary mt-3" href="./div.jsp">Home Page</a>
            <!-- <%= exception %> --!>
        </div>
    </body>

    </html>
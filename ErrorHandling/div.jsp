<%@page errorPage="error.jsp" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Division</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <form action="./result.jsp">
                        <div class="card">
                            <div class="card-header bg-dark text-white">
                                <h3>Give two numbers:</h3>
                            </div>
                            <div class="card-body bg-secondary-subtle">
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="n1" placeholder="Enter number1">
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="n2" placeholder="Enter number2">
                                </div>
                            </div>
                            <div class="card-footer text-center bg-dark text-white">
                                <button class="btn btn-outline-success ">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </body>

    </html>
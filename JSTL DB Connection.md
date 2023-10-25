####Example Code:
```
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Database Operation</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
                crossorigin="anonymous">
        </head>

        <body>

            <sql:setDataSource var="snapshot" driver="oracle.jdbc.OracleDriver"
                url="jdbc:oracle:thin:@192.168.0.7:1521:orcl" user="<your_user>" password="<your_password>" />

            <sql:query dataSource="${snapshot}" var="rs">
                select * from users
            </sql:query>

            <div class="container">
                <h1>All Users:</h1>
                <table class="table">
                    <tr>
                        <th>Email</th>
                        <th>Name</th>
                    </tr>
                    <c:forEach items="${rs.rows}" var="row">
                        <tr>
                            <td>
                                <c:out value="${row.EMAIL}" />
                            </td>
                            <td>
                                <c:out value="${row.NAME}" />
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </body>
```

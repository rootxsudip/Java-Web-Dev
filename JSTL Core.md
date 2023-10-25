#### Example tags with code:
index.jsp
```
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSTL Example</title>
    </head>

    <body>
        <h1>This is JSTL Example</h1>
        <!-- <h3>1. Set Tag: Alternative declare variable alternate -->
        </h3>
        <c:set var="i" value="1337" scope="application"></c:set>
        <!-- 2. Out Tag: alternate of expression tag -->
        <h3>
            <c:out value="${i}"></c:out>
        </h3>
        <!-- 3. Remove Tag: -->
        <c:remove var="i"></c:remove>
        <h3>
            <c:out value="${i}">This is default value if it can't access the value of variable</c:out>
        </h3>
        <hr>

        <!-- 4. if Tag: test condition : true => print.. -->
        <c:set var="num" value="1337"></c:set>
        <c:if test="${num > 100}">
            <h1>Leet Number</h1>
        </c:if>

        <!-- 5. Switch: choose,when,otherwise -->
        <c:choose>
            <c:when test="${num>0}">
                <h1>First case</h1>
                <h1>Positive number</h1>
            </c:when>
            <c:when test="${num<0}">
                <h1>Second case</h1>
                <h1>Negetive number</h1>
            </c:when>
            <c:otherwise>
                <h1>default case</h1>
                <h1>The number is zero</h1>
            </c:otherwise>
        </c:choose>

        <!-- 6.Loop: Travese array,list,obj etc. -->
        <h1>Loop</h1>
        <c:forEach var="i" begin="1" end="10">
            <h2>Value of i is <c:out value="${i}"></c:out>
            </h2>
        </c:forEach>
        <jsp:scriptlet>
            String[] windows = new String[]{"Windows XP", "Windows 7", "Windows 8", "Windows mobile"};
            pageContext.setAttribute("windows", windows);
        </jsp:scriptlet>

        <%-- JSTL foreach tag example to loop an array in jsp --%>
            <c:forEach var="window" items="${windows}">
                <c:out value="${window}" />
            </c:forEach>

            <%-- Redirect: --%>
                <c:url var="myurl" value="https://evil.com/test">
                    <c:param name="q" value="test"></c:param>
                </c:url>
                <h3>
                    <c:out value="${myurl}"></c:out>
                </h3>
                <%-- <c:redirect url="${myurl}"></c:redirect> --%>
    </body>

    </html>
```

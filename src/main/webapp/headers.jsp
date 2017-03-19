<%--
  Created by IntelliJ IDEA.
  User: Vasiliy Kylik
  Date: 19.03.2017
  Time: 22:54
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HTTP Header Request Example</title>
</head>
<body>
<h2>HTTP Header Request Example</h2>
<table width="100%" border="1" align="center">
    <tr bgcolor="#949494">
        <th>Header Name</th>
        <th>Header Value(s)</th>
    </tr>
    <%--    Пройдемся по списку, получим все header-ы из нашего request и запишем в табличку--%>
    <%--for(String s:list) = items (это как list), var (это как s).
    Мы итерируемся по Set-у ключей.
    ${} - Expression Langugage}--%>
    <c:forEach items="${header.keySet()}" var="headerName">
        <tr>
            <td><c:out value="${headerName}"/></td>
            <td><c:out value="${header.get(headerName)}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

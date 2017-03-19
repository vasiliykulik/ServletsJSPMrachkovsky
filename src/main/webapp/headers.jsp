<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Vasiliy Kylik
  Date: 19.03.2017
  Time: 22:54
--%>
<%--JSP директивы, позволяют добавлять в HTML
1. content type
2. объявить язык который будет внутри использоваться
3. <%%> - скриплет, а JSP - по сути servlet - и у него есть доступ к объектам:
 request, response, Writer--%>
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
    <%
        /*типизированный по String*/
        Enumeration<String> headerNames = request.getHeaderNames();
        while (headerNames.hasMoreElements()){
          String headerName = headerNames.nextElement();
          String headerValue = request.getHeader(headerName);
          out.print("<tr><td>" + headerName + "</td>\n");
          out.println("<td>" + headerValue + "</td></tr>\n");
        }
    %>
</table>
</body>
</html>

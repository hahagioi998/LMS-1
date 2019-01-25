<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Log" %><%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>図書状態遷移LOG</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>
<table class="table">
    <thead>
    <tr>
        <th>図書番号</th>
        <th>学生番号</th>
        <th>借り/返す</th>
        <th>更新時刻</th>
        <th>借り日数</th>
        <th>状態</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Log> loglist = (ArrayList<Log>)session.getAttribute("loglist");
        if(loglist!=null && loglist.size() > 0)
        {
            for(int i = loglist.size() - 1; i >= 0 ; i--)
            {
                Log log = loglist.get(i);
    %>
    <tr>
        <td><%=log.getBookid()%></td>
        <td><%=log.getReaderid()%></td>
        <td><%=log.getService()%></td>
        <td><%=log.getBorrowtime()%></td>
        <td><%=log.getBorrowday()%></td>
        <td><%=log.getComplete()%></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
</body>
</html>

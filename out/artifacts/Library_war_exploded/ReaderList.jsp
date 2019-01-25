<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Reader" %>
<%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
    ArrayList<Reader> readerlist = (ArrayList<Reader>)session.getAttribute("readerlist");
%>
<head>
    <title>読者リスト</title>
</head>
<body>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>

<table class="table">
    <thead>
    <tr>
        <th>ID</th>
        <th>名前</th>
        <th>性別</th>
        <th>状態</th>
        <th>メール</th>
        <th>電話番号</th>
        <th>クラス</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <%
        String status = null;
        String edit = null;
        if(readerlist!=null && readerlist.size() > 0)
        {
            for (int i = 0; i < readerlist.size(); i++)
            {
                Reader reader = readerlist.get(i);
    %>
    <tr>
        <td><%=reader.getUsername()%></td>
        <td><%=reader.getName()%></td>
        <td><%=reader.getSex()%></td>
        <%
            status = (reader.getStatus() == 1)?"正常":"ブラックリスト";
            edit = (reader.getStatus() == 1)?"ブラックリストに追加":"正常に戻す";
        %>
        <td><%=status%></td>
        <td><%=reader.getMail()%></td>
        <td><%=reader.getTel()%></td>
        <td><%=reader.getGrade()%>Grade<%=reader.getClassnum()%>クラス</td>
        <td><a href="ReaderAction?action=SetBlackList&id=<%=reader.getUsername()%>&edit=<%=edit%>"><%=edit%></a></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>
</body>
</html>

<%@ page import="Dao.BookDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Book" %>
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
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
    ArrayList<Book> booklist = (ArrayList<Book>)session.getAttribute("allbooklist");
%>
<html>
<head>
    <title>図書管理</title>
</head>
<body>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>
<table class="table">
    <thead>
    <tr>
        <th>図書番号</th>
        <th>書名</th>
        <th>作者</th>
        <th>出版社</th>
        <th>値段</th>
        <th>カテゴリ</th>
        <th>在庫</th>
        <th>貸し出し数</th>
        <th>残り数</th>
        <th>場所</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <%
        if(booklist!=null && booklist.size() > 0)
        {
            for(int i = 0; i < booklist.size(); i++)
            {
                Book b = booklist.get(i);
    %>
    <tr>
        <td><%=b.getId()%></td>
        <td><a href="BookAction?action=querybookbyid&id=<%=b.getId()%>&next=check"><%=b.getName()%></a> </td>
        <td><%=b.getAuthor()%></td>
        <td><%=b.getPublisher()%></td>
        <td><%=b.getPrice()%></td>
        <td><%=b.getCategory()%></td>
        <td><%=b.getStore()%></td>
        <td><%=b.getLend()%></td>
        <td><%=b.getRemain()%></td>
        <td><%=b.getLocation()%></td>
        <td><a href="BookAction?action=querybookbyid&id=<%=b.getId()%>&next=edit">編集＆削除</a></td>
    </tr>
    <%
            }
        }
    %>
    </tbody>
</table>

</body>
</html>

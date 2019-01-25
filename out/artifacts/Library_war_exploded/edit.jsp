<%@ page import="Entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<html>
<head>
    <title>図書編集</title>
</head>
<body>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>
<%
    Book book = (Book)session.getAttribute("resultbook");
%>
<form action="BookAction?action=EditDone" method="post">
    <div class="detail">
        <div class="title">
            <span>図書情報編集</span>
        </div>
        <div>
            <span class="infotitle">図書番号：</span><input name="id" value="<%=book.getId()%>" readonly="readonly">
        </div>
        <div>
            <span class="infotitle">書名：</span><input name="name" value="<%=book.getName()%>">
        </div>
        <div>
            <span class="infotitle">作者：</span><input name="author" value="<%=book.getAuthor()%>">
        </div>
        <div>
            <span class="infotitle">出版社：</span><input name="publisher" value="<%=book.getPublisher()%>">
        </div>
        <div>
            <span class="infotitle">値段：</span><input name="price" value="<%=book.getPrice()%>">
        </div>
        <div>
            <span class="infotitle">カテゴリ：</span><input name="category" value="<%=book.getCategory()%>">
        </div>
        <div>
            <span class="infotitle">在庫：</span><input name="store" value="<%=book.getStore()%>">
        </div>
        <div>
            <span class="infotitle">場所：</span><input name="location" value="<%=book.getLocation()%>">
        </div>
        <div>
            <span class="infotitle">情報：</span><textarea name="desc"><%=book.getDesc()%></textarea>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">完成</button>
            <a href="BookAction?action=DeleteById&id=<%=book.getId()%>"><button type="button" class="btn btn-danger">削除</button></a>
            <a href="BookAction?action=getall"><button type="button" class="btn btn-info">戻る</button></a>
        </div>
    </div>
</form>
</body>
</html>

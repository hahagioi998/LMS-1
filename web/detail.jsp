<%@ page import="Entity.Book" %><%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/detail.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>図書情報</title>
</head>
<body>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<%
    Book book = (Book)session.getAttribute("resultbook");
%>
<div class="detail">
    <div class="title">
        <span>図書情報</span>
    </div>
    <div id="id">
        <span class="infotitle">図書番号：</span><span class="info"><%=book.getId()%></span>
    </div>
    <div>
        <span class="infotitle">書名：</span><span class="info"><%=book.getName()%></span>
    </div>
    <div>
        <span class="infotitle">作者：</span><span class="info"><%=book.getAuthor()%></span>
    </div>
    <div>
        <span class="infotitle">出版社：</span><span class="info"><%=book.getPublisher()%></span>
    </div>
    <div>
        <span class="infotitle">値段：</span><span class="info"><%=book.getPrice()%>円</span>
    </div>
    <div>
        <span class="infotitle">カテゴリ：</span><span class="info"><%=book.getCategory()%></span>
    </div>
    <div>
        <span class="infotitle">在庫：</span><span class="info"><%=book.getStore()%>冊</span>
    </div>
    <div>
        <span class="infotitle">場所：</span><span class="info"><%=book.getLocation()%>番本棚</span>
    </div>
    <div>
        <span class="infotitle">図書情報：</span><span class="info"><%=book.getDesc()%></span>
    </div>
    <div class="button">
        <a href="BookAction?action=querybookbyid&id=<%=book.getId()%>&next=edit"><button type="button" class="btn btn-default">編集</button></a>
        <a href="BookAction?action=getall"><button type="button" class="btn btn-info">戻る</button></a>
    </div>
</div>
</body>
</html>

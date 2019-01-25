<%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/addbook.css">
<script src="${pageContext.request.contextPath}/js/AddScript.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>add book</title>
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
<form action="BookAction?action=addtemp" onsubmit="return errorsubmit()" method="post">
    <div class="bookinfo">
        <div class="title">
            <span>book info</span>
        </div>
        <div>
            <span class="infotitle">図書番号：</span><input name="bookid" class="required" id="bookid" onkeyup="bookcheck()"  ><span id="bookidcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">書名：</span><input class="required" name="bookname"><span id="booknamecheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">作者：</span><input class="required" name="bookauthor"><span id="bookauthorcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">出版社：</span><input class="required" name="bookpublisher"><span id="bookpublishercheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">値段：</span><input class="required" name="bookprice"><span id="bookpricecheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">カテゴリー：</span><input class="required" name="bookcategory"><span id="bookcategorycheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">在庫：</span><input class="required" name="bookstore" ><span id="bookstorecheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">場所：</span><input class="required" name="booklocation" ><span id="booklocationcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">書籍紹介：</span><textarea name="bookdesc"></textarea><span id="bookdesccheck" class="error"></span>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-default" name="over" value="1">complete</button>
            <button type="submit" class="btn btn-default" name="over" value="0" id="send">continue</button>
        </div>
    </div>
</form>
</body>
</html>
    

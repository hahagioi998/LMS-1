<%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/returnpage.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/return.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>図書返し</title>
</head>
<body>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>
</body>
<div class="returninfo">
    <div class="title">
        学生番号を入力
    </div>
    <form action="ReaderAction?action=GetBorrowListById" onsubmit="return errorsubmit()" method="post">
        <div>
            <span class="infotitle">学生番号：</span><input type="text" onkeyup="readercheck()" name="readerid" id="readerid"><span id="readeridcheck" class="error"></span>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">OK</button>
            <button type="reset" class="btn btn-default">リセット</button>
        </div>
    </form>
</div>
</html>

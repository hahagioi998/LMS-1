<%--
  Created by IntelliJ IDEA.
  User: DUO ZHAO
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/borrow.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/InfoScript.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<html>
<head>
    <title>貸し出し</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
    if(session.getAttribute("adminname") == null){
        response.sendRedirect("/Library/index.jsp");
    }
%>
<body>
<h1 align="center">welcome to the library management system</h1>
<jsp:include page="nav.html"/>
<div class="borrowinfo">
    <div class="title">
        貸し出し
    </div>
    <form action="IOAction?action=borrow" onsubmit="return errorsubmit()" method="post">
        <div>
            <span class="infotitle">学生番号：</span><input type="text" onkeyup="readercheck()" name="readerid" id="readerid"><span id="readeridcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">学生名前：</span><input type="text" name="readername" id="readername" disabled>
        </div>
        <div>
            <span class="infotitle">クラス：</span><input type="text" name="readername" id="readerclass" disabled>
        </div>
        <div>
            <span class="infotitle">ユーザー状態：</span><input type="text" name="readername" id="readerstatus" disabled><span id="readerstatuscheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">借り数：</span><input type="text" name="readerborrow" id="readerborrow" disabled><span id="readerborrowcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">図書番号：</span><input type="text" name="bookid" onkeyup="bookcheck()" id="bookid"><span id="bookidcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">書名：</span><input type="text" name="bookname" id="bookname"disabled>
        </div>
        <div>
            <span class="infotitle">作者：</span><input type="text" name="bookauthor" id="bookauthor" disabled>
        </div>
        <div>
            <span class="infotitle">出版社：</span><input type="text" name="bookpublisher" id="bookpublisher" disabled>
        </div>
        <div>
            <span class="infotitle">残り数：</span><input type="text" name="bookremain" id="bookremain" disabled><span id="booknumcheck" class="error"></span>
        </div>
        <div>
            <span class="infotitle">借り日数：</span>
            <select name="borrowday">
                <option value="7">7日</option>
                <option value="14">14日</option>
            </select>
        </div>
        <div class="button">
            <button type="submit" class="btn btn-success">OK</button>
            <button type="reset" class="btn btn-default">Reset</button>
        </div>
    </form>
</div>
</body>
</html> 

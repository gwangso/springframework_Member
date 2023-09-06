<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원계시판</title>
    <%-- 부트스트랩 --%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <div class="row m-5">
        <div class="col">
            <%@include file="component/header.jsp"%>
            <%@include file="component/nav.jsp"%>
            <div class="row my-5">
                <div class="col">
                    <h1 class="ms-5 mb-3">회원게시판 홈</h1>
                    <p class="ms-3">내용없음</p>
                </div>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </div>
</body>
</html>

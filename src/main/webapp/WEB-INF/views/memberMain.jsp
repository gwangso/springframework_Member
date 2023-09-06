<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <%-- 부트스트랩 --%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <div class="row m-5">
        <div class="col">
            <%@include file="component/header.jsp"%>
            <%@include file="component/nav.jsp"%>
            <div class="row">
                <div class="col">
                    <h2 class="text-center">Main</h2>
                    <a href="/member?id=${sessionScope.member.id}">${sessionScope.member.memberName}</a>님, 환영합니다. &nbsp;&nbsp;
                    <a href="/logout">로그아웃</a>
                </div>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </div>
</body>
</html>

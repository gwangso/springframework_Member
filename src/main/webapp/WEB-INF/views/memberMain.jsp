<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <h2 class="text-center mt-5">Main</h2>
            <div class="row my-5">
                <div class="col">
                    <c:choose>
                        <c:when test="${not empty sessionScope.member}">
                            <a href="/member?id=${sessionScope.member.id}">${sessionScope.member.memberName}</a>님, 환영합니다. &nbsp;&nbsp;
                            <a href="/logout">로그아웃</a>
                        </c:when>
                        <c:otherwise>
                            <h1 class="text-center">로그인상태가 아닙니다.</h1>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </div>
</body>
</html>
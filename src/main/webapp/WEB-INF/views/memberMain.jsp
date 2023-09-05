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

</head>
<body>
    <div class="row m-5">
        <div class="col">
            <h2 class="text-center">Main</h2>
            <a href="/member?id=${member.id}">상세정보</a> &nbsp&nbsp
            <a href="/logout">로그아웃</a>
        </div>
    </div>
</body>
</html>

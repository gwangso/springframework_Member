<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
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
                    <h2 class="text-center mb-5"><b>Login</b></h2>
                    <div class="div_login card mx-5 p-5">
                        <form method="post">
                            <div class="row">
                                <div class="col-8 col-xl-10">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text">이메일</span>
                                        <input class="form-control" type="text" name="memberEmail" placeholder="Email">
                                    </div>
                                    <div class="input-group ">
                                        <span class="input-group-text">비밀번호</span>
                                        <input class="form-control" type="password" name="memberPassword" placeholder="Password">
                                    </div>
                                </div>
                                <div class="col-4 col-xl-2 text-center">
                                    <button class="btn btn-primary btn-lg">로그인</button>
                                </div>
                            </div>
                        </form>
                        <a href="/save">회원가입</a>
                    </div>
                </div>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </div>
</body>
</html>

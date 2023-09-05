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
    <title>Title</title>
    <%-- 부트스트랩 --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

</head>
<body>
    <div class="row m-5">
        <div class="col">
            <h2 class="text-center mb-5"><b>Login</b></h2>
            <div class="div_login card row p-5">
                <form method="post">
                    <div class="col-lg-2"></div>
                    <div class="col-8 col-lg-6">
                        <div class="input-group mb-3">
                            <span class="input-group-text">이메일</span>
                            <input class="form-control" type="text" name="memberEmail" placeholder="Email">
                        </div>
                        <div class="input-group mb-5">
                            <span class="input-group-text">비밀번호</span>
                            <input class="form-control" type="password" name="memberPassword" placeholder="Password">
                        </div>
                    </div>
                    <div class="col-4 col-md-2">
                        <button class="btn btn-primary">로그인</button>
                    </div>
                    <div class="col-lg-2"></div>
                </form>
            </div>
            <a href="/save">회원가입</a>
        </div>
    </div>
</body>
</html>

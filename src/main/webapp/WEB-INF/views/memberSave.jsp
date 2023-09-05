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
    <title>Member_Save</title>
    <%-- 부트스트랩 --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
    <div class="row m-5">
        <div class="col">
            <div class="card p-5">
                <form method="post">
                    <div class="input-group mb-3">
                        <span class="input-group-text">이메일</span>
                        <input class="form-control" type="text" name="memberEmail">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">비밀번호</span>
                        <input class="form-control" type="text" name="memberPassword">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">이름</span>
                        <input class="form-control" type="text" name="memberName">
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">생년월일</span>
                        <input class="form-control" type="text" name="memberBirth">
                    </div>
                    <div class="input-group mb-5">
                        <span class="input-group-text">전화번호</span>
                        <input class="form-control" type="text" name="memberMobile">
                    </div>
                    <div class="text-end">
                        <input class="btn btn-primary" type="submit" value="저장">
                        <input class="btn btn-danger" type="reset" value="리셋">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

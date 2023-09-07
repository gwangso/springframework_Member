<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 2:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>상세정보</title>
    <%-- 부트스트랩 --%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
<div class="row m-5">
    <div class="col">
        <%@include file="component/header.jsp" %>
        <%@include file="component/nav.jsp" %>
        <div class="row m-5">
            <div class="col">
                <h2 class="mb-3">${member.memberName}님의 정보</h2>
                <div class="card p-5 mb-3">
                    <form name="update-form" method="post">
                        <div class="input-group mb-3">
                            <span class="input-group-text">회원번호</span>
                            <input class="form-control" type="text" name="id" value="${member.id}" readonly>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">이메일</span>
                            <input id="memberEmail" class="form-control" type="text" name="memberEmail" value="${member.memberEmail}">
                            <input type="button" id="duplicate-check" class="btn btn-warning btn-sm" onclick="email_check()" value="중복체크">
                        </div>
                        <div class="">&nbsp;&nbsp;※ 문자,숫자,특수문자를 사용해 8자리 이상 15자리 이하로 설정해주세요</div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">비밀번호</span>
                            <div class="form-floating">
                                <input id="floatingInput" class="form-control" type="password" name="memberPassword"
                                       value="${member.memberPassword}" onkeyup="passwordCheck_fn(this.value)">
                                <label id="passwordCheck" for="floatingInput" style="color:gray">비밀번호를 입력해주세요</label>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">이름</span>
                            <input class="form-control" type="text" name="memberName" value="${member.memberName}">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">생년월일</span>
                            <input class="form-control" type="text" name="memberBirth" value="${member.memberBirth}">
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">전화번호</span>
                            <input class="form-control" type="text" name="memberMobile" value="${member.memberMobile}">
                        </div>
                        <div class="text-end">
                            <input class="btn btn-primary" type="button" value="수정" onclick="update_fn()">
                            <input class="btn btn-danger" type="reset" value="리셋">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="component/footer.jsp" %>
    </div>
</div>
</body>
<script>
    let duple = 2;
    const email_check = () => {

    }
</script>
</html>

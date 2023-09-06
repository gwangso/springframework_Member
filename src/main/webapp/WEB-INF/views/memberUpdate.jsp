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
    <%@include file="component/header.jsp"%>
    <%@include file="component/nav.jsp"%>
    <div class="row m-5">
      <div class="col">

        <h2 class="mb-3">${member.memberName}님의 정보</h2>
        <div class="card p-5 mb-3">
            <form method="post">
              <div class="input-group mb-3">
                <span class="input-group-text">이메일</span>
                <input class="form-control" type="text" name="memberEmail" value="${member.memberEmail}">
              </div>
              <div class="input-group mb-3">
                <span class="input-group-text">비밀번호</span>
                <input class="form-control" type="text" name="memberPassword" value="${member.memberPassword}">
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
                <input class="btn btn-primary" type="submit" value="수정">
                <input class="btn btn-danger" type="reset" value="리셋">
              </div>
            </form>
        </div>
      </div>
    </div>
    <%@include file="component/footer.jsp"%>
  </div>
</div>
</body>
</html>

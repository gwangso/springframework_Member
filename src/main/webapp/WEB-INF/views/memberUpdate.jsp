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
</head>
<body>
<div class="row">
  <div class="col">
    <h2>${member.memberName}님의 정보</h2>
    <div class="card p-5">
      <div class="input-group">
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
    <button class="btn btn-primary" onclick="update_fn('${member.id}')">수정</button>
    <button class="btn btn-danger" onclick="return_fn('${member.id}')">취소</button>
  </div>
</div>
</body>
<script>
  const update_fn = (id) =>{
    location.href = "/update?id="+id;
  }
  const return_fn = (id) =>{
    location.href = "/delete?id="+id;
  }
</script>
</html>
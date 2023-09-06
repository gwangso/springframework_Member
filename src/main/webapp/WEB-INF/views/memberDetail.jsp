<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오후 2:04
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
                <div class="card p-3 mb-3">
                    이름 : ${member.memberName}
                    <br>
                    E-mail : ${member.memberEmail}
                    <br>
                    생년월일 : ${member.memberBirth}
                    <br>
                    전화번호 : ${member.memberMobile}
                </div>
                <button class="btn btn-primary btn-sm" onclick="update_fn('${member.id}')">수정</button>&nbsp;
                <button class="btn btn-danger btn-sm" onclick="delete_fn('${member.id}')">삭제</button>
            </div>
        </div>
        <%@include file="component/footer.jsp"%>
    </div>
  </div>
</body>
<script>
    const update_fn = (id) =>{
        location.href = "/update?id="+id;
    }
    const delete_fn = (id) =>{
        location.href = "/delete?id="+id;
    }
</script>
</html>

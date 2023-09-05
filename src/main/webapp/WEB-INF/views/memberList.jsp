<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-05
  Time: 오전 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Member_List</title>
    <%-- 부트스트랩 --%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body>
    <div class="row m-5">
        <div class="col">
            <h2>회원목록</h2>
            <br>
            <div id="div_list">
                <table class="table">
                    <tr class="table-dark">
                        <th>이메일</th>
                        <th>이름</th>
                        <th>생년월일</th>
                        <th>전화번호</th>
                    </tr>
                    <c:forEach items="${memberList}" var="member">
                        <tr>
                            <td>${member.memberEmail}</td>
                            <td>${member.memberName}</td>
                            <td>${member.memberBirth}</td>
                            <td>${member.memberMobile}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <button class="btn btn-success" onclick="toList_fn('/')">처음으로</button>
        </div>
    </div>
</body>
<script>
    const toList_fn = (url) => {
        location.href = url;
    }
</script>
</html>

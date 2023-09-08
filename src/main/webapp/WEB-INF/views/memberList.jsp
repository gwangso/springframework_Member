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
    <%-- jquery --%>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>


    <%-- 부트스트랩 --%>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/main.css">

    <style>
        #member:hover {
            cursor : pointer;
            background-color: lightgray;
            color : #0d6efd;
        }
    </style>
</head>
<body>
    <div class="row m-5">
        <div class="col">
            <%@include file="component/header.jsp"%>
            <%@include file="component/nav.jsp"%>
            <div class="row my-5 mx-3">
                <div class="col">
                    <h2 class="ms-3">회원목록</h2>
                    <br>
                    <div id="div_list">
                        <table class="table align-content-center">
                            <tr class="table-dark">
                                <th>이메일</th>
                                <th>이름</th>
                                <th>생년월일</th>
                                <th>전화번호</th>
                            </tr>
                            <c:forEach items="${memberList}" var="member">
                                <tr id="member" class="p-3" onclick="member_fn(${member.id})">
                                    <td>
                                        <p>
                                            ${member.memberEmail}
                                        </p>
                                    </td>
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
            <div id="member-detail">

            </div>
        <%@include file="component/footer.jsp"%>
        </div>
    </div>
</body>
</div>
<script>
    const toList_fn = (url) => {
        location.href = url;
    }

    const member_fn = (id) => {
        const divMember = document.getElementById("member-detail");



        $.ajax({
            type:"get",
            url:"/member-ajax",
            data:{id: id},
            success:function(data){
                divMember.innerHTML = "<div class='card p-3 mx-5'>" +
                    "<p>" + data.memberEmail + "</p>" +
                    "<p>" + data.memberName + "</p>" +
                    "<p>" + data.memberBirth + "</p>" +
                    "<p>" + data.memberMobile + "</p>" +
                    "</div>"
            },
            error:function(err){
                alert("맴버정보를 가져오지 못했습니다.")
                console.log(err.errorCode)
            }
        });
    }
</script>
</html>

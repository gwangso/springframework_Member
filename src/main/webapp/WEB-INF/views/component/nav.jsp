<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-06
  Time: 오전 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
  <div class="col">
    <div id="nav">
      <ul class="menu">
        <li class="menu-item">
          <a href="/">index</a>
        </li>
        <c:if test="${not empty sessionScope.member}">
          <li class="menu-item">
            <a href="/main">메인</a>
          </li>
        </c:if>
        <li class="menu-item">
          <a href="/save">회원가입</a>
        </li>
        <c:if test="${sessionScope.member.memberEmail eq 'admin'}">
          <li class="menu-item">
            <a href="/members">회원목록</a>
          </li>
        </c:if>
        <!--로그인 여부에 따라 로그인했으면 oo님 환영합니다 및 로그아웃링크를 보이고
        로그인 하지 않았으면 로그인이 보이도록 -->
        <li id="login-area" class="menu-item">
          <a href="/logout">로그아웃</a>
        </li>
      </ul>
    </div>
  </div>
</div>

<script>
  const loginArea = document.getElementById("login-area");
  const loginEmail = '${sessionScope.member.memberEmail}';
  console.log(loginEmail.length)
  if(loginEmail.length !=0){
    //로그인 o
    loginArea.innerHTML = `<a href='/member?id=${sessionScope.member.id}'>${sessionScope.member.memberName}</a><span class="align-self-center" width=50px style="color : white;">님 환영해요!</span> <a href='/logout'>로그아웃</a>`;
  }else {
    // 로그인 x
    loginArea.innerHTML = "<a href='/login'>로그인</a>";
  }
</script>

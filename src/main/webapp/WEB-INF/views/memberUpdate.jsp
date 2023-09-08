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

    <%-- jquery --%>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

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
                        <div class="input-group mb-1">
                            <span class="input-group-text">이메일</span>
                            <input id="memberEmail" class="form-control" type="text" name="memberEmail" value="${member.memberEmail}" onkeyup="email_check()">
                        </div>
                        <p id="email-check" class="mb-3 ms-5" style="display: none"></p>
                        <div class="ms-3" style="color: gray">※ 문자,숫자,특수문자를 사용해 8자리 이상 15자리 이하로 설정해주세요</div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">비밀번호</span>
                            <div class="form-floating">
                                <input id="floatingInput" class="form-control" type="password" name="memberPassword"
                                       value="${member.memberPassword}" onkeyup="passwordCheck_fn(this.value)">
                                <label id="password-check" for="floatingInput" style="color:gray">비밀번호를 입력해주세요</label>
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
    let passcheck = false;

    const email_check = () => {
        const email = document.getElementsByName("memberEmail")[0];
        const emailCheck = document.getElementById("email-check");
        if (email.value == "${member.memberEmail}"){
            emailCheck.style.display = "none";
            duple=2;
        }else {
            $.ajax({
                type:"post",
                url:"/duplicate-check",
                data:{memberEmail:email.value},
                success:function(data){
                    emailCheck.innerHTML = "사용가능한 아이디입니다."
                    emailCheck.style.color = "darkgreen";
                    emailCheck.style.display = "block";
                    duple=data;
                },
                error:function(err){
                    emailCheck.innerHTML = "사용불가능한 아이디입니다."
                    emailCheck.style.color = "red";
                    emailCheck.style.display = "block";
                    duple=err;
                }
            });
        }
    }

    const passwordCheck_fn = (password) => {
        const reg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
        const passwordCheck = document.getElementById("password-check");

        if (password=="") {
            passcheck=false;
            passwordCheck.innerHTML = "비밀번호를 입력해주세요";
            passwordCheck.style.color = 'gray';
        }else if (reg.test(password)){
            passcheck=true;
            passwordCheck.innerHTML = "사용할 수 있는 비밀번호입니다.";
            passwordCheck.style.color = 'darkgreen';
        }else {
            passcheck=false;
            passwordCheck.innerHTML = "사용할 수 없는 비밀번호입니다.";
            passwordCheck.style.color = "red";
        }
    }

    const update_fn = () => {
        const id = document.getElementsByName("id")[0];
        const email = document.getElementsByName("memberEmail")[0];
        const password = document.getElementsByName("memberPassword")[0];
        const name = document.getElementsByName("memberName")[0];
        const birth = document.getElementsByName("memberBirth")[0];
        const mobile = document.getElementsByName("memberMobile")[0];

        if (email.value==""){
            alert("이메일을 입력해주세요")
            email.focus();
        }else if (duple==0){
            alert("이메일이 중복됩니다. 다른 이메일을 사용하세요")
            email.focus();
        }else if (password.value==""){
            alert("비밀번호를 입력해주세요")
            password.focus();
        }else if (!passcheck){
            alert("사용할 수 없는 비밀번호입니다.")
            password.focus();
        }else if (name.value==""){
            alert("이름을 입력해주세요.")
            name.focus();
        }else if (birth.value==""){
            alert("생년월일을 입력해주세요.")
            birth.focus();
        }else if (mobile.value==""){
            alert("전화번호를 입력해주세요.")
            mobile.focus();
        }else {
            if (confirm("정보를 수정하시겠습니까?")){
                const model = {
                    id : id.value,
                    memberEmail : email.value,
                    memberName : name.value,
                    memberPassword : password.value,
                    memberBirth : birth.value,
                    memberMobile : mobile.value
                }

                $.ajax({
                    type:"post",
                    url:"/update",
                    data: JSON.stringify(model),
                    contentType: "application/json",
                    success:function(data){
                        if(data){
                            alert("정보수정 성공")
                            location.href = "/member?id="+${sessionScope.member.id};
                        }else {
                            alert("정보수정 실패")
                            location.href = "/update?id="+${sessionScope.member.id};
                        }
                    },
                    error:function(err){
                        alert("정보를 수정하는도중 얘기치 못한 오류와 맞닿드렸습니다.")
                    }
                });
            }
        }
    }
</script>
</html>

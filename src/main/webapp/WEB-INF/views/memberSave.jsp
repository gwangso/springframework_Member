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
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

    <%-- jquery --%>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <%-- css --%>
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <div class="row m-5">
        <div class="col">
            <%@include file="component/header.jsp"%>
            <%@include file="component/nav.jsp"%>
            <div class="div-save card m-5 p-5">
                <form name="frm" method="post">
                    <div class="input-group mb-3">
                        <span class="input-group-text">이메일</span>
                        <input class="form-control" type="text" name="memberEmail">
                        &nbsp;
                        <button id="duplicate-check" class="btn btn-warning btn-sm">중복체크</button>
                    </div>
                    <div class="">&nbsp;&nbsp;※ 문자,숫자,특수문자를 사용해 8자리 이상 15자리 이하로 설정해주세요</div>
                    <div class="input-group mb-3">
                        <span class="input-group-text">비밀번호</span>
                        <div class="form-floating">
                            <input id="floatingInput" class="form-control" type="password" name="memberPassword" onkeyup="passwordCheck_fn(this.value)">
                            <label id="passwordCheck" for="floatingInput">비밀번호를 입력해주세요</label>
                        </div>
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
                        <input class="btn btn-secondary" type="reset" value="리셋">
                    </div>
                </form>
            </div>
            <%@include file="component/footer.jsp"%>
        </div>
    </div>
</body>

<%-- 함수 --%>
<script>
    let emailCheck = false;
    let passwordCheck = false;

    $("#duplicate-check").on("click", function(e){
        e.preventDefault();
        const memberEmail = $(frm.memberEmail).val();
        if (memberEmail==""){
            alert("아이디를 입력해주세요")
        } else {
            $.ajax({
                type:"post",
                url:"/duplicate-check",
                data:{memberEmail : memberEmail},
                success:function(data){
                    if (data==1){
                        alert("사용가능한 아이디입니다.")
                        emailCheck= true;
                        $(frm.memberPassword).focus();
                    }else {
                        alert("사용 불가능한 아이디입니다.")
                        $(frm.memberEmail).val("");
                        $(frm.memberEmail).focus();
                    }
                }
            });
        }
    });

    $(frm).on("submit", function(e){
        e.preventDefault();
        const memberEmail = $(frm.memberEmail).val();
        const memberPassword = $(frm.memberPassword).val();
        const memberName = $(frm.memberName).val();
        const memberBirth = $(frm.memberBirth).val();
        const memberMobile = $(frm.memberMobile).val();
        if (memberEmail=="") {
            alert("아이디를 입력해주세요.")
            $(frm.memberEmail).focus();
        } else if(!emailCheck) {
            alert("아이디 중복체크를 해주세요")
        }else if (memberPassword==""){
            alert("비밀번호를 입력해주세요.")
            $(frm.memberPassword).focus();
        }else if (!passwordCheck){
            alert(`비밀번호가 조건에 맞지 않습니다.
            비밀번호를 확인해주세요`)
        }else if (memberName==""){
            alert("이름을 입력해주세요.")
            $(frm.memberName).focus();
        }else if (memberBirth==""){
            alert("생년월일을 입력해주세요.")
            $(frm.memberBirth).focus();
        }else if (memberMobile==""){
            alert("전화번호를 입력해주세요.")
            $(frm.memberMobile).focus();
        }else {
            if (confirm("회원가입을 하시겠습니까?")){
                frm.submit();
            }
        }
    });

    const passwordCheck_fn = (password) =>{
        const reg = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;

        if(reg.test(password)){
            passwordCheck = true;
            $("#passwordCheck").text("사용 가능한 비밀번호입니다.")
        }else {
            $("#passwordCheck").text("사용 불가능한 비밀번호입니다.")
        }
    }
</script>
</html>

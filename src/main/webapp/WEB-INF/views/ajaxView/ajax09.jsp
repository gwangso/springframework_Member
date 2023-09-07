<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-07
  Time: 오전 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <%-- jquery --%>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

</head>
<body>
<button onclick="ajax09()">함수호출</button>
</body>
<script>
    const ajax09 = () => {
        const email = "tmddyd01"
        const password = "1234"
        const name = "정승용"
        const member = {
            memberEmail: email,
            memberPassword: password,
            memberName: name
        }
        $.ajax({
            type: "post",
            url: "/ajax09",
            data: JSON.stringify(member),
            contentType: "application/json",
            success: function (data) {
                console.log("성공", data);
            },
            error: function () {
                console.log("실패")
            }
        });
    }

</script>
</html>

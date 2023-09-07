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
<button onclick="ajax08()">함수호출</button>
</body>
<script>
    const ajax08 = () => {
        $.ajax({
            type: "get",
            url: "/ajax08",
            success: function (data) {
                console.log("성공", data);
                for (let i in data){
                    console.log(data[i].memberEmail);
                    console.log(data[i].memberName);
                }
            },
            error: function () {
                console.log("실패")
            }
        });
    }

</script>
</html>

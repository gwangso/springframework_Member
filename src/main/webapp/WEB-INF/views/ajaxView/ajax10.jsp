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
<button onclick="ajax10()">함수호출</button>
<div id="result-area">

</div>
</body>
<script>
    const ajax10 = () => {
        const email = "ehddn01"
        const password = "1234"
        const name = "길동우"
        const birth = "19970512"
        const mobile = "01070707070"
        $.ajax({
            type: "post",
            url: "/ajax10",
            data: {
                memberEmail: email,
                memberPassword: password,
                memberName: name,
                memberBirth: birth,
                memberMobile: mobile
            },
            success: function (data) {
                console.log("성공", data);
                const resultArea = document.getElementById("result-area");
                let result = "<table>"
                for (let i in data){
                    result += "<tr>";
                    result += "<td>" + data[i].memberEmail + "</td>";
                    result += "<td>" + data[i].memberPassword + "</td>";
                    result += "<td>" + data[i].memberName + "</td>";
                    result += "<td>" + data[i].memberBirth + "</td>";
                    result += "<td>" + data[i].memberMobile + "</td>";
                    result += "</tr>"
                }
                result += "</table>";
                resultArea.innerHTML = result;
            },
            error: function () {
                console.log("실패")
            }
        });
    }

</script>
</html>

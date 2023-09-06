<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-06
  Time: 오전 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<hr>
<div id="footer" class="row mt-3">
  <div class="col">
    <p>Copyright 2023. 박경수</p>
  </div>
</div>
<script>
  const date = new Date();
  console.log(date);
  console.log(date.getFullYear());
  const footer = document.getElementById("footer")
  const footer1 = document.querySelector("#footer");
  footer.innerHTML = "<p>&copy; "+date.getFullYear() + "&nbsp; kyeongsu All rights reserved</p>";
</script>
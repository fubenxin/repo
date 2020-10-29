<%--
  Created by IntelliJ IDEA.
  User: fubenxin
  Date: 2020/10/10
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
查询所有用户成功
<c:forEach items="${users}" var="user">
    ${user.username}<br/>
</c:forEach>
</body>
</html>

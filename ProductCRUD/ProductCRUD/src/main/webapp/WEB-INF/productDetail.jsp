<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/9/2023
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi tiết sp</title>
</head>
<body>
<h1>sp </h1>
<c:forEach items="${product.imageUrls}" var="url">
  <img width="150px" height="150px" style="object-fit: cover" src="<%=request.getContextPath()%>/image/${url}" alt="url">
</c:forEach>
</body>
</html>

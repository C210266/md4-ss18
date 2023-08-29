<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/10/2023
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="10" cellpadding="20" cellspacing="10">
  <thead>
  <tr>
    <th>STT</th>
    <th>ProName</th>
    <th>Image</th>
    <th>Price</th>
    <th>Quantity</th>
    <th>Action</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${cart}" var="c" varStatus="item">
    <tr>
      <td>${item.count}</td>
      <td>${c.p.name}</td>
      <td><img width="100px" height="100px" style="object-fit: cover" src="<%=request.getContextPath()%>/image/${c.p.imageUrl}" alt="anh"></td>
      <td>${c.p.price}</td>
      <td>${c.quantity}</td>
      <td><a onclick="return confirm('do you want to delete this item ? ')" href="<%=request.getContextPath()%>/ProductController?action=DELETE&id=${p.id}">Delete</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>

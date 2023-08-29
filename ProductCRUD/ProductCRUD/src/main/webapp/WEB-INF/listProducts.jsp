<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/7/2023
  Time: 5:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../layout/head.jsp"></jsp:include>
</head>
<body>
<h1>List Product</h1>

<a href="<%=request.getContextPath()%>/ProductController?action=CREATE">Add</a>
<table border="10" cellpadding="20" cellspacing="10">
    <thead>
    <tr>
        <th>STT</th>
        <th>Name</th>
        <th>Image</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Status</th>
        <th colspan="4">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="p" varStatus="item">
        <tr>
            <td>${item.count}</td>
            <td>${p.name}</td>
            <td><img width="100px" height="100px" style="object-fit: cover" src="<%=request.getContextPath()%>/image/${p.imageUrl}" alt="anh"></td>
            <td>${p.price}</td>
            <td>${p.stock}</td>
            <td>${p.status?"Còn Hàng":"Hết Hàng"}</td>
            <td><a href="<%=request.getContextPath()%>/ProductController?action=EDIT&id=${p.id}">Edit</a></td>
            <td><a href="<%=request.getContextPath()%>/CartServlet?action=ADDTOCART&id=${p.id}">Buy</a></td>
            <td><a href="<%=request.getContextPath()%>/ProductController?action=DETAIL&id=${p.id}">Detail</a></td>
            <td><a onclick="return confirm('do you want to delete this item ? ')" href="<%=request.getContextPath()%>/ProductController?action=DELETE&id=${p.id}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>

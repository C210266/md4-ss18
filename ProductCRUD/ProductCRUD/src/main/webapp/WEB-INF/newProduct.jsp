<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 8/7/2023
  Time: 5:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../layout/head.jsp"></jsp:include>
</head>
<body>
<h1 class="text-center">New Product</h1>
<div class="container p-4 my-3 border border-2 border-warning" style="max-width: 60vw">
    <form action="<%=request.getContextPath()%>/ProductController" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="name" class="form-label">Product Name</label>
            <input type="text" class="form-control" id="name" name="name" value="<%=request.getParameter("name")!=null?request.getParameter("name"):' '%>">
            <div class="text-danger">
                ${errorName}
            </div>
        </div>
        <div class="mb-3">
            <label for="des" class="form-label">Description</label>
            <textarea class="form-control" id="des" name="des" required></textarea>
            <div class="invalid-feedback">

            </div>
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Price</label>
            <input type="number" class="form-control " name="price" id="price">
            <div class="${errorPrice!=null?'in':''}valid-feedback">
                ${errorPrice}
            </div>
        </div>
        <div class="mb-3">
            <label for="stock" class="form-label">Stock</label>
            <input type="text" class="form-control is-valid" id="stock" name="stock">
            <div class="valid-feedback">

            </div>
        </div>
        <div class="mb-3">
            <input type="file" class="form-control is-valid" name="image" aria-label="main picture" required>
            <div class="invalid-feedback">

            </div>
        </div>
        <div class="mb-3">
            <input type="file" class="form-control" name="imageUrls" multiple aria-label="anh phu" required>
            <div class="invalid-feedback">

            </div>
        </div>

        <div class="mb-3">
            <input class="btn btn-primary" type="submit" value="ADD" name="action">
        </div>
    </form>
</div>

<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>

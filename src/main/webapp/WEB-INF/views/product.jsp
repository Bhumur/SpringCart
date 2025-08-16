<%@ include file="header.jsp" %>

<section class="section">
    <div class="container">
        <h2>All Products</h2>

        <a href="${pageContext.request.contextPath}/products/new" class="btn">+ Add New Product</a>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Category</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.productid}</td>
                        <td>${product.productsName}</td>
                        <td>${product.productsPrice}</td>
                        <td>${product.productQuantity}</td>
                        <td>${product.category.categoryName}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/products/edit/${product.productid}" class="btn">Edit</a>
                            <a href="${pageContext.request.contextPath}/products/delete/${product.productid}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<%@ include file="footer.jsp" %>

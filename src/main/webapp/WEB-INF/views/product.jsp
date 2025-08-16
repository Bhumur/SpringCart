<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<section class="form-section">
    <div class="form-container">
        <h2 class="form-title">All Products</h2>

        <div class="actions">
            <a href="${pageContext.request.contextPath}/products/new" class="btn-submit">+ Add New Product</a>
        </div>

        <!-- Products Table -->
        <table class="styled-table">
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
                        <td>₹ ${product.productsPrice}</td>
                        <td>${product.productQuantity}</td>
                        <td>${product.category.categoryName}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/products/edit/${product.productid}" class="btn-edit">Edit</a>
                            <a href="${pageContext.request.contextPath}/products/delete/${product.productid}" class="btn-delete">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<%@ include file="footer.jsp" %>

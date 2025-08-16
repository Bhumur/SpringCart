<%@ include file="header.jsp" %>

<section class="section">
    <div class="container">
        <h2>${product != null ? "Edit Product" : "Add New Product"}</h2>

        <form action="${pageContext.request.contextPath}/products/save" method="post" class="form">
            <input type="hidden" name="productid" value="${product.productid}">

            <div class="form-group">
                <label for="productsName">Product Name</label>
                <input type="text" id="productsName" name="productsName"
                       value="${product.productsName}" required>
            </div>

            <div class="form-group">
                <label for="productsPrice">Price</label>
                <input type="number" id="productsPrice" name="productsPrice" step="0.01"
                       value="${product.productsPrice}" required>
            </div>

            <div class="form-group">
                <label for="productQuantity">Quantity</label>
                <input type="number" id="productQuantity" name="productQuantity"
                       value="${product.productQuantity}" required>
            </div>

            <div class="form-group">
                <label for="categoryId">Category</label>
                <select id="categoryId" name="categoryId" required>
                    <c:forEach var="cat" items="${categories}">
                        <option value="${cat.categoryId}"
                            ${product.category != null && product.category.categoryId == cat.categoryId ? "selected" : ""}>
                            ${cat.categoryName}
                        </option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit" class="btn">Save</button>
            <a href="${pageContext.request.contextPath}/products" class="btn">Cancel</a>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

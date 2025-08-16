<%@ include file="header.jsp" %>

<section class="section">
    <div class="container">
        <h2>All Categories</h2>

        <a href="${pageContext.request.contextPath}/categories/new" class="btn">+ Add New Category</a>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="category" items="${categories}">
                    <tr>
                        <td>${category.categoryId}</td>
                        <td>${category.categoryName}</td>
                        <td>${category.categoryDiscription}</td>
                        <td>
                            <img src="${category.categoryImg}" alt="Image" width="60" height="60">
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/categories/edit/${category.categoryId}" class="btn">Edit</a>
                            <a href="${pageContext.request.contextPath}/categories/delete/${category.categoryId}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<%@ include file="footer.jsp" %>

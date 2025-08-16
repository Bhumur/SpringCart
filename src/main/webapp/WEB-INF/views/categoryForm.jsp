<%@ include file="header.jsp" %>

<section class="section">
    <div class="container">
        <h2>${category != null ? "Edit Category" : "Add New Category"}</h2>

        <form action="${pageContext.request.contextPath}/categories/save" method="post" class="form">
            <input type="hidden" name="categoryId" value="${category.categoryId}">

            <div class="form-group">
                <label for="categoryName">Name</label>
                <input type="text" id="categoryName" name="categoryName" 
                       value="${category.categoryName}" required>
            </div>

            <div class="form-group">
                <label for="categoryDiscription">Description</label>
                <textarea id="categoryDiscription" name="categoryDiscription" required>
                    ${category.categoryDiscription}
                </textarea>
            </div>

            <div class="form-group">
                <label for="categoryImg">Image URL</label>
                <input type="text" id="categoryImg" name="categoryImg" 
                       value="${category.categoryImg}" required>
            </div>

            <button type="submit" class="btn">Save</button>
            <a href="${pageContext.request.contextPath}/categories" class="btn">Cancel</a>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<section class="section">
    <div class="container form-container">
        <h2 class="form-title">
            <c:choose>
                <c:when test="${category != null}">Edit Category</c:when>
                <c:otherwise>Add New Category</c:otherwise>
            </c:choose>
        </h2>

        <form action="${pageContext.request.contextPath}/categories/save" method="post" class="form">
            
            <!-- Hidden field for ID (only used when editing) -->
            <c:if test="${category != null}">
                <input type="hidden" name="categoryId" value="${category.categoryId}" />
            </c:if>

            <!-- Category Name -->
            <div class="form-group">
                <label for="categoryName">Category Name</label>
                <input type="text" id="categoryName" name="categoryName" 
                       value="${category != null ? category.categoryName : ''}" 
                       placeholder="Enter category name" required />
            </div>

            <!-- Category Description -->
            <div class="form-group">
                <label for="categoryDiscription">Description</label>
                <textarea id="categoryDiscription" name="categoryDiscription" placeholder="Enter description" required>
                    ${category != null ? category.categoryDiscription : ''}
                </textarea>
            </div>

            <!-- Category Image URL -->
            <div class="form-group">
                <label for="categoryImg">Image URL</label>
                <input type="text" id="categoryImg" name="categoryImg" 
                       value="${category != null ? category.categoryImg : ''}" 
                       placeholder="Paste image URL" />
            </div>

            <!-- Buttons -->
            <div class="form-actions">
                <button type="submit" class="btn">
                    <c:choose>
                        <c:when test="${category != null}">Update</c:when>
                        <c:otherwise>Save</c:otherwise>
                    </c:choose>
                </button>

                <a href="${pageContext.request.contextPath}/categories" class="btn btn-secondary">Cancel</a>

                <c:if test="${category != null}">
                    <a href="${pageContext.request.contextPath}/categories/delete/${category.categoryId}" 
                       class="btn btn-danger"
                       onclick="return confirm('Are you sure you want to delete this category?')">
                        Delete
                    </a>
                </c:if>
            </div>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

<%@page import="com.SpringCart.Service.CategoryServiceImpl"%>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	
%>
<section class="form-section">
    <div class="form-container">
        <h2 class="form-title">All Categories</h2>

        <div class="actions">
            <a href="${pageContext.request.contextPath}/categories/new" class="btn-submit">+ Add New Category</a>
        </div>

        <!-- Categories Table -->
        <table class="styled-table">
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
                            <img src="${category.categoryImg}" alt="Category Image" width="60" height="60" style="border-radius:6px;">
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/categories/edit/${category.categoryId}" class="btn-edit">Edit</a>
                            <a href="${pageContext.request.contextPath}/categories/delete/${category.categoryId}" class="btn-delete">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</section>

<%@ include file="footer.jsp" %>

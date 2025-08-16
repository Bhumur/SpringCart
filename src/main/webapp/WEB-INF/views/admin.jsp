<%@ include file="header.jsp" %>

<section class="admin-section">
    <div class="admin-container">
        <h2 class="admin-title">Admin Dashboard</h2>
        <p class="admin-subtitle">Welcome, Admin! Use the options below to manage your store.</p>

        <div class="admin-grid">
            <!-- Manage Categories -->
            <div class="admin-card">
                <h3>Manage Categories</h3>
                <p>Add, edit, or remove product categories.</p>
                <a href="${pageContext.request.contextPath}/categoryForm" class="btn">Go to Categories</a>
            </div>

            <!-- Manage Products -->
            <div class="admin-card">
                <h3>Manage Products</h3>
                <p>Add, edit, or remove products.</p>
                <a href="${pageContext.request.contextPath}/products" class="btn">Go to Products</a>
            </div>
        </div>
    </div>
</section>

<%@ include file="footer.jsp" %>

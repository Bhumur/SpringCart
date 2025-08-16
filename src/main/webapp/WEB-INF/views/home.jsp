<%@ include file="header.jsp" %>

<!-- Hero Section -->
<section class="hero">
    <div class="hero-content">
        <h1>Welcome to SpringCart</h1>
        <p>Your one-stop shop for all products at the best prices</p>
        <a href="${pageContext.request.contextPath}/products" class="btn">Shop Now</a>
        <a href="${pageContext.request.contextPath}/register" class="btn secondary">Join Us</a>
    </div>
</section>

<!-- Categories Section -->
<section class="categories">
    <h2>Shop by Category</h2>
    <div class="category-container">
        <div class="category-card">
            <img src="/images/electronics.jpg" alt="Electronics">
            <h3>Electronics</h3>
        </div>
        <div class="category-card">
            <img src="/images/fashion.jpg" alt="Fashion">
            <h3>Fashion</h3>
        </div>
        <div class="category-card">
            <img src="/images/grocery.jpg" alt="Grocery">
            <h3>Grocery</h3>
        </div>
    </div>
</section>


<%@ include file="footer.jsp" %>

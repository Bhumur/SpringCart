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
    		<c:forEach var="category" items="${categories}">
		    	<div class="category-card">
		            <img src="/images/${category.categoryImg}" alt="Electronics">
		            <h3>${category.categoryName}</h3>
		            <h3>${category.categoryDiscription}</h3>
		        </div>
			</c:forEach>
   		</div>
</section>


<%@ include file="footer.jsp" %>

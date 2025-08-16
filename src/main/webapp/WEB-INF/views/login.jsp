<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<!-- Login Section -->
<section class="login-section">
    <div class="login-container">
        <h2>Login to SpringCart</h2>

        <!-- Error Message -->
        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>

        <!-- Success Message (for logout or registration redirect) -->
        <c:if test="${not empty success}">
            <div class="success-message">${success}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="post" class="login-form">
            
            <!-- Username or Email -->
            <div class="form-group">
                <label for="usernameOrEmail">Email or Username</label>
                <input type="text" id="usernameOrEmail" name="usernameOrEmail" 
                       placeholder="Enter your email or username" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn">Login</button>

            <!-- Register Link -->
            <p class="register-link">
                Don’t have an account? 
                <a href="${pageContext.request.contextPath}/register">Register here</a>
            </p>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

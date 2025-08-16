<%@ include file="header.jsp" %>

<section class="login-section">
    <div class="login-container">
        <h2 class="login-title">Welcome Back</h2>
        <p class="login-subtitle">Login with your email or username</p>

        <!-- Error Message -->
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="post" class="login-form">

            <div class="form-group">
                <label for="usernameOrEmail">Email or Username</label>
                <input type="text" id="usernameOrEmail" name="usernameOrEmail" placeholder="Enter email or username" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter password" required>
            </div>

            <button type="submit" class="btn-submit">Login</button>

            <p class="register-link">Don't have an account? 
                <a href="${pageContext.request.contextPath}/register">Register here</a>
            </p>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

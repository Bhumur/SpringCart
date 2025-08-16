<%@ include file="header.jsp" %>

<!-- Register Section -->
<section class="register-section">
    <div class="register-container">
        <h2>Create Your Account</h2>

        <!-- Error Message -->
        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>

        <!-- Success Message -->
        <c:if test="${not empty success}">
            <div class="success-message">${success}</div>
        </c:if>

        <form action="${pageContext.request.contextPath}/register" method="post" class="register-form">

            <!-- Name -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <!-- Username -->
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Choose a username" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter a strong password" required>
            </div>

            <!-- Phone -->
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number">
            </div>

            <!-- Address -->
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" rows="3" placeholder="Enter your address"></textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn">Register</button>

            <!-- Login Link -->
            <p class="login-link">
                Already have an account? 
                <a href="${pageContext.request.contextPath}/login">Login here</a>
            </p>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

<%@ include file="header.jsp" %>

<section class="register-section">
    <div class="register-container">
        <h2 class="register-title">Create an Account</h2>
        <p class="register-subtitle">Please fill in the details to register</p>

        <form action="${pageContext.request.contextPath}/register" method="post" class="register-form">

            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Choose a username" required>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter password" required>
            </div>

            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="text" id="phone" name="phone" placeholder="Enter phone number (optional)" maxlength="15">
            </div>

            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" placeholder="Enter your address" rows="3"></textarea>
            </div>

            <button type="submit" class="btn-submit">Register</button>
            
            <p class="login-link">Already have an account? 
                <a href="${pageContext.request.contextPath}/login">Login here</a>
            </p>
        </form>
    </div>
</section>

<%@ include file="footer.jsp" %>

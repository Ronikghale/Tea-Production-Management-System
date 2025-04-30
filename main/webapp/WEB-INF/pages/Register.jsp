<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Hatey Patti Tea Production</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Register.css">
</head>
<body>
    <div class="logo">
        <i class="fas fa-leaf"></i> Hatey Patti
    </div>

    <section class="register-section">
        <div class="register-container">
            <div class="register-image">
                <h2>Join Hatey Patti Today</h2>
                <p>Create an account to access our comprehensive tea production management system.</p>
            </div>
            <div class="register-form">
                <h2>Create Account</h2>

                <%
                String error = (String) request.getAttribute("error");
                String success = (String) request.getAttribute("success");
                if (error != null) {
                %>
                <div class="error-message"><%= error %></div>
                <%
                } else if (success != null) {
                %>
                <div class="success-message"><%= success %></div>
                <%
                }
                %>

                <form action="${pageContext.request.contextPath}/Register" method="post">
                    <div class="form-row">
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" id="firstName" name="firstName" value="<%= request.getAttribute("firstName") != null ? request.getAttribute("firstName") : "" %>" required>
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" id="lastName" name="lastName" value="<%= request.getAttribute("lastName") != null ? request.getAttribute("lastName") : "" %>" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" value="<%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %>" required>
                    </div>

                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" name="phone" value="<%= request.getAttribute("phone") != null ? request.getAttribute("phone") : "" %>" required>
                    </div>

                    <div class="form-row">
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" required>
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">Confirm Password</label>
                            <input type="password" id="confirmPassword" name="confirmPassword" required>
                        </div>
                    </div>

                    <button type="submit" class="btn">Register Now</button>
                    <div class="login-link">
                        <p>Already have an account? <a href="${pageContext.request.contextPath}/Login">Login here</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <script src="${pageContext.request.contextPath}/js/Register.js"></script>
</body>
</html>
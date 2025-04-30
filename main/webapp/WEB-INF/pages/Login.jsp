<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login - Hatey Patti Tea Production</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Login.css">

</head>
<body>
  <div class="container">
    <div class="left">
      <h2>Welcome Back</h2>
      <p>Log in to your Hatey Patti account to access the comprehensive tea production management tools and continue managing your operations efficiently.</p>
      <ul>
        <li>📊 Real-time production tracking</li>
        <li>🗃 Inventory management</li>
        <li>👥 Workforce management</li>
        <li>📄 Comprehensive reporting</li>
      </ul>
    </div>
    <div class="right">
    <form action="${pageContext.request.contextPath}/Login" method="post">
      <h2>Login</h2>
      
        <label>Email Address</label>
        <input type="email" name="email" required>

        <label>Password</label>
       <input type="password" name="password" required>

        <div class="options">
          <label><input type="checkbox"> Remember me</label>
          <a href="#">Forgot password?</a>
        </div>

        <button type="submit">Login</button>
		</form>
        <p>Don't have an account? <a href="${pageContext.request.contextPath}/Register">Register Now</a></p>


        <div class="or">Or login with</div>
        <div class="social">
          <button class="google">G</button>
          <button class="facebook">f</button>
        </div>
      
    </div>
  </div>
</body>
</html>

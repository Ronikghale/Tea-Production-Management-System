<%@ page session="true" %>
<%@ page import="com.teaapp.model.Customer" %>
<%
    Customer customer = (Customer) session.getAttribute("customer");
    String role = (String) session.getAttribute("role");
    if (customer == null) {
        response.sendRedirect(request.getContextPath() + "/Login");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hatey Patti - Organic Tea</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

    <header class="navbar">
        <div class="logo">Hatey Patti <span>Organic Tea</span></div>
        <ul class="nav-links">
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="${pageContext.request.contextPath}/product">Our Products</a></li>
            <li><a href="portfolio">Portfolio</a></li>
            
            <li><a href="#">Contact Us</a></li>
            <% if ("admin".equals(role)) { %>
                <li><a href="${pageContext.request.contextPath}/admin/dashboard">Admin Dashboard</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/profile">Admin Profile</a></li>
            <% } %>
        </ul>
        <div class="icons">
            <i class="fa-solid fa-cart-shopping"></i>
        </div>
    </header>

    <p style="text-align: right; margin-right: 20px; color: white;">Welcome, <%= customer.getFirstName() %>!</p>

    <section class="hero">
    <div class="hero-content">
        <h1>Fresh From Our Tea Gardens to Your Cup</h1>
        <p>Welcome to Hatey Patti, your destination for pure, organic tea bliss.</p>
        <a href="#" class="btn">Buy now</a>
    </div>
    
    <div class="hero-image">
        <img src="${pageContext.request.contextPath}/images/tea.png" alt="Tea Cups">
    </div>
</section>


</body>
</html>

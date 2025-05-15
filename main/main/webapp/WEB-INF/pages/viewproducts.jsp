<%@ page import="java.util.List" %>
<%@ page import="com.teaapp.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tea Products - Hatry Patti</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/viewproduct.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Header Section -->
    <header class="header">
        <div class="header-container">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/images/logo.png" alt="Hatry Patti Logo">
                <div class="logo-text">
                    <h1>Hatey Patti</h1>
                    <p>Premium Tea Selection</p>
                </div>
            </div>
            <nav class="nav-links">
                <a href="${pageContext.request.contextPath}/home">Home</a>
                <a href="${pageContext.request.contextPath}/shop" class="active">Shop</a>
                <a href="${pageContext.request.contextPath}/about">About Us</a>
                <a href="${pageContext.request.contextPath}/contact">Contact</a>
                <a href="${pageContext.request.contextPath}/cart">Cart</a>
            </nav>
        </div>
    </header>

    <div class="container">
        <h1>Our Tea Products</h1>
        
        <div class="admin-button">
            <form action="<%= request.getContextPath() %>/product-management" method="get">
                <button type="submit" class="admin-btn">Go to Product Management</button>
            </form>
        </div>

        <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        if (products != null && !products.isEmpty()) {
        %>
        <table border="1" cellpadding="10">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price (Rs.)</th>
                    <th>Image</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (Product p : products) {
                %>
                <tr>
                    <td><%= p.getId() %></td>
                    <td><%= p.getName() %></td>
                    <td><%= p.getDescription() %></td>
                    <td>Rs. <%= String.format("%.2f", p.getPrice()) %></td>
                    <td>
                        <%
                        String image = p.getImage();
                        if (image != null && !image.isEmpty()) {
                        %>
                        <img src="<%= request.getContextPath() %>/<%= image %>" alt="<%= p.getName() %>" width="80">
                        <%
                        } else {
                        %>
                        <span class="no-image">Image not available</span>
                        <%
                        }
                        %>
                    </td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <p class="empty-message">No products available at the moment.</p>
        <%
        }
        %>
    </div>
</body>
</html>
<%@ page import="java.util.List" %>
<%@ page import="com.teaapp.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tea Products - Hatey Patti</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Product.css">
</head>
<body>

<%@ include file = "header.jsp" %>

<div class="page-header">
    <h1>Our Tea Products</h1>
    <div class="header-decoration"></div>
</div>

<div class="product-container">
<%
List<Product> products = (List<Product>) request.getAttribute("products");
if (products != null && !products.isEmpty()) {
    for (Product p : products) {
%>
    <div class="product-card">
        <div class="product-image">
            <img src="<%= p.getImage() %>" alt="<%= p.getName() %>">
        </div>
        <div class="product-info">
            <h2><%= p.getName() %></h2>
            <p class="product-description"><%= p.getDescription() %></p>
            <p class="price">Rs. <%= String.format("%.2f", p.getPrice()) %></p>

            <form action="${pageContext.request.contextPath}/Cart" method="post" class="cart-form">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="productId" value="<%= p.getId() %>">
                <button type="submit" class="add-to-cart-btn">Add to Cart</button>
            </form>
        </div>
    </div>
<%
    }
} else {
%>
    <div class="no-products">
        <p>No products available at the moment.</p>
        <p class="check-back">Please check back soon for our new collection.</p>
    </div>
<%
}
%>
</div>

<!-- Include Footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
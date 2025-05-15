<%@ page import="java.util.List" %>
<%@ page import="com.teaapp.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Tea Products - Hatey Patti</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Product.css">
</head>
<body>

<%@ include file = "header.jsp" %>

<h1>Our Tea Products</h1>

<div class="product-container">
<%
List<Product> products = (List<Product>) request.getAttribute("products");
if (products != null && !products.isEmpty()) {
    for (Product p : products) {
%>
<div class="product-card">
    <img src="<%= p.getImage() %>" alt="<%= p.getName() %>">
    <h2><%= p.getName() %></h2>
    <p><%= p.getDescription() %></p>
    <p class="price">Rs. <%= String.format("%.2f", p.getPrice()) %></p>
    
    <form action="${pageContext.request.contextPath}/Cart" method="post">
    <input type="hidden" name="action" value="add">
    <input type="hidden" name="productId" value="<%= p.getId() %>">
    <button type="submit">Add to Cart</button>
</form>

</div>
<%
    }
} else {
%>
<p>No products available at the moment.</p>
<%
}
%>
</div>

</body>
</html>

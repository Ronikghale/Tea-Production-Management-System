<%@ page import="java.util.List" %>
<%@ page import="com.teaapp.model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Products - Hatey Patti</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product-management.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- Header Section -->
    <header class="header">
        <div class="header-container">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/images/logo.png" alt="Hatry Patti Logo">
                <div class="logo-text">
                    <h1>Hatry Patti</h1>
                    <p>Premium Tea Selection</p>
                </div>
            </div>
            <nav class="nav-links">
                <a href="${pageContext.request.contextPath}/home">Home</a>
                <a href="${pageContext.request.contextPath}/shop">Shop</a>
                <a href="${pageContext.request.contextPath}/product-management" class="active">Products</a>
                <a href="${pageContext.request.contextPath}/orders">Orders</a>
                <a href="${pageContext.request.contextPath}/logout">Logout</a>
            </nav>
        </div>
    </header>

    <div class="container">
        <h1>Manage Tea Products</h1>

     <form action="${pageContext.request.contextPath}/product-management" method="post">
    <input type="hidden" name="action" value="add" />
    <table>
        <tr>
            <td><input type="text" name="name" placeholder="Name" required /></td>
            <td><input type="text" name="description" placeholder="Description" required /></td>
            <td><input type="text" name="price" placeholder="Price" required /></td>
            <td><input type="text" name="imagePath" placeholder="Image Path (e.g., images/green-tea.jpg)" /></td>
            <td><button type="submit">Add</button></td>
        </tr>
    </table>
</form>


        <hr/>

        <!-- Edit/Delete Existing Products -->
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
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                for (Product p : products) {
                %>
                <!-- Update Form -->
                <form action="<%= request.getContextPath() %>/product-management" method="post">
                <input type="hidden" name="action" value="update">
                
    <tr>
        <td><input type="hidden" name="id" value="<%= p.getId() %>"/><%= p.getId() %></td>
        <td><input type="text" name="name" value="<%= p.getName() %>" /></td>
        <td><input type="text" name="description" value="<%= p.getDescription() %>" /></td>
        <td><input type="text" name="price" value="<%= p.getPrice() %>" /></td>
        <td>
            <img src="<%= request.getContextPath() %>/<%= p.getImage() %>" width="60"><br>
            <input type="text" name="image" value="<%= p.getImage() %>" />
        </td>
        <td><button type="submit">Update</button></td>
    </tr>
</form>


                <!-- Delete Form -->
                <form action="<%= request.getContextPath() %>/product-management" method="post">
                    <input type="hidden" name="action" value="delete" />
                    <input type="hidden" name="id" value="<%= p.getId() %>" />
                    <tr>
                        <td colspan="6" style="text-align: right;">
                            <button type="submit" onclick="return confirm('Are you sure you want to delete this product?')">Delete</button>
                        </td>
                    </tr>
                </form>
                <%
                }
                %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <p>No products found.</p>
        <%
        }
        %>
    </div>
</body>
</html>
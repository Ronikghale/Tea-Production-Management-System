<%@ page import="java.util.Map" %>
<%@ page import="com.teaapp.model.CartItem" %>
<%@ page import="com.teaapp.model.Product" %>


<div class="cart-container">
    <h2 class="cart-title">Your Shopping Cart</h2>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Cart.css">
    
    <%
    Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session.getAttribute("cart");
    if (cart != null && !cart.isEmpty()) {
    %>
    <table>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
        </tr>
        <%
        double total = 0;
        for (CartItem item : cart.values()) {
            Product p = item.getProduct();
            int qty = item.getQuantity();
            double price = p.getPrice();
            double subTotal = price * qty;
            total += subTotal;
        %>
        <tr>
            <td class="product-name"><%= p.getName() %></td>
            <td class="quantity"><%= qty %></td>
            <td class="price"><%= String.format("%.2f", price) %></td>
            <td class="subtotal"><%= String.format("%.2f", subTotal) %></td>
        </tr>
        <%
        }
        %>
        <tr>
            <td colspan="3"><strong>Total:</strong></td>
            <td class="total-amount"><strong><%= String.format("%.2f", total) %></strong></td>
        </tr>
    </table>
    
    <div class="cart-actions">
       <a href="${pageContext.request.contextPath}/product" class="btn btn-secondary">Continue Shopping</a>


        <a href="checkout.jsp" class="btn">Proceed to Checkout</a>
    </div>
    <%
    } else {
    %>
    <div class="empty-cart">
        <div class="empty-cart-icon">🛒</div>
        <p>Your cart is empty.</p>
        <a href="Product.jsp" class="btn">Browse Products</a>
    </div>
    <%
    }
    %>
</div>
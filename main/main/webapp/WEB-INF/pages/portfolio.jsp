<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.teaapp.model.Customer" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession Session = request.getSession(false);
    Customer customer = (Customer) session.getAttribute("customer");
    if (customer == null) {
        response.sendRedirect(request.getContextPath() + "/Login");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>User Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/portfolio.css">
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/Home">Home</a>
        <a href="${pageContext.request.contextPath}/Products">Products</a>
        <a href="${pageContext.request.contextPath}/Orders">My Orders</a>
        <a href="${pageContext.request.contextPath}/Logout">Logout</a>
    </div>

    <div class="profile-container">
        <h2>Welcome, <%= customer.getFirstName() + " " + customer.getLastName() %>!</h2>

        <div class="profile-info">
            <p><strong>Customer ID:</strong> <%= customer.getCustomerId() %></p>
            <p><strong>Full Name:</strong> <%= customer.getFirstName() + " " + customer.getLastName() %></p>
            <p><strong>Email:</strong> <%= customer.getEmailAddress() %></p>
            <p><strong>Phone:</strong> <%= customer.getPhoneNumber() %></p>
        </div>

        <div class="profile-actions">
<a class="btn" href="${pageContext.request.contextPath}/EditPortfolio">Edit Profile</a>
        </div>
    </div>
</body>
</html>

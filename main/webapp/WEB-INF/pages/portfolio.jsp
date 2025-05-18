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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div class="layout-container">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <div class="logo">
                <span>Tea</span>App
            </div>
            <div class="nav-links">
                <a href="${pageContext.request.contextPath}/Home"><i class="fas fa-home"></i> Home</a>
                <a href="${pageContext.request.contextPath}/products"><i class="fas fa-leaf"></i> Products</a>
                <a href="${pageContext.request.contextPath}/Orders"><i class="fas fa-shopping-bag"></i> My Orders</a>
                <a class="active" href="#"><i class="fas fa-user"></i> Profile</a>
                <a href="${pageContext.request.contextPath}/Logout" class="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
            </div>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="top-header">
                <h1>My Profile</h1>
                <div class="user-greeting">
                    <div class="user-avatar">
                        <%= customer.getFirstName().charAt(0) %><%= customer.getLastName().charAt(0) %>
                    </div>
                    <span>Welcome, <%= customer.getFirstName() %>!</span>
                </div>
            </div>

            <div class="content-wrapper">
                <div class="profile-card">
                    <div class="profile-header">
                        <h2>Personal Information</h2>
                        <a href="${pageContext.request.contextPath}/EditPortfolio" class="edit-btn">
                            <i class="fas fa-pencil-alt"></i> Edit
                        </a>
                    </div>
                    
                    <div class="profile-info">
                        <div class="info-group">
                            <div class="info-item">
                                <div class="info-label">
                                    <i class="fas fa-id-card"></i>
                                    <span>Customer ID</span>
                                </div>
                                <div class="info-value"><%= customer.getCustomerId() %></div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-label">
                                    <i class="fas fa-user"></i>
                                    <span>Full Name</span>
                                </div>
                                <div class="info-value"><%= customer.getFirstName() + " " + customer.getLastName() %></div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-label">
                                    <i class="fas fa-envelope"></i>
                                    <span>Email</span>
                                </div>
                                <div class="info-value"><%= customer.getEmailAddress() %></div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-label">
                                    <i class="fas fa-phone"></i>
                                    <span>Phone</span>
                                </div>
                                <div class="info-value"><%= customer.getPhoneNumber() %></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="profile-actions">
                        <a class="btn primary-btn" href="${pageContext.request.contextPath}/Orders">
                            <i class="fas fa-history"></i> View Order History
                        </a>
                        <a class="btn secondary-btn" href="${pageContext.request.contextPath}/Products">
                            <i class="fas fa-shopping-cart"></i> Shop Now
                        </a>
                    </div>
                </div>
            </div>
              
            <footer>
                <p>&copy; 2025 TeaApp. All rights reserved.</p>
            </footer>
        </div>
    </div>
</body>
</html>
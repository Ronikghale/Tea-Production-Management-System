<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession Session = request.getSession(false);
    String adminName = (String) session.getAttribute("adminName"); // Assuming you store admin's name
    if (adminName == null) {
        response.sendRedirect(request.getContextPath() + "/AdminLogin");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Hattey Patti</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>

    <header class="admin-header">
        <h1>☕ Hattey Patti Admin Dashboard</h1>
        <div class="admin-info">
            <span>Welcome, <%= adminName %>!</span>
            <a href="${pageContext.request.contextPath}/AdminLogout">Logout</a>
        </div>
    </header>

    <nav class="admin-nav">
        <ul>
            <li><a href="${pageContext.request.contextPath}/admin/products">Manage Products</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/customers">Manage Customers</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/orders">Manage Orders</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/inventory">Manage Inventory</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/reports">View Reports</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/settings">Settings</a></li>
        </ul>
    </nav>

    <main class="admin-main">
        <section class="dashboard-cards">
            <div class="card">
                <h2>Total Products</h2>
                <p>120</p> <!-- You can dynamically set these -->
            </div>
            <div class="card">
                <h2>Total Customers</h2>
                <p>85</p>
            </div>
            <div class="card">
                <h2>Pending Orders</h2>
                <p>14</p>
            </div>
            <div class="card">
                <h2>Inventory Alerts</h2>
                <p>5 Items Low</p>
            </div>
        </section>
    </main>

    <footer class="admin-footer">
        <p>&copy; 2025 Hattey Patti - All rights reserved.</p>
    </footer>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    HttpSession sessionutil = request.getSession(false);
    String adminName = (String) session.getAttribute("adminName");
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
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
        <li><a href="${pageContext.request.contextPath}/viewproduct">Manage Products</a></li>
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
            <p>${totalProducts}</p>
        </div>
        <div class="card">
            <h2>Total Customers</h2>
            <p>${totalCustomers}</p>
        </div>
        <div class="card">
            <h2>Pending Orders</h2>
            <p>${pendingOrders}</p>
        </div>
        <div class="card">
            <h2>Inventory Alerts</h2>
            <p>${lowInventory} Items Low</p>
        </div>
    </section>

    <!-- Real-time Bar Chart -->
    <section class="chart-section" style="padding: 2rem;">
        <h2>Dashboard Overview</h2>
        <canvas id="adminChart" width="600" height="300"></canvas>
    </section>
</main>

<footer class="admin-footer">
    <p>&copy; 2025 Hattey Patti - All rights reserved.</p>
</footer>

<!-- Chart.js Script -->
<script>
    const ctx = document.getElementById('adminChart').getContext('2d');
    const adminChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Total Products', 'Total Customers', 'Pending Orders', 'Low Inventory'],
            datasets: [{
                label: 'Dashboard Metrics',
                data: [
                    ${totalProducts},
                    ${totalCustomers},
                    ${pendingOrders},
                    ${lowInventory}
                ],
                backgroundColor: [
                    '#4CAF50',
                    '#2196F3',
                    '#FFC107',
                    '#F44336'
                ],
                borderColor: [
                    '#388E3C',
                    '#1976D2',
                    '#FFA000',
                    '#D32F2F'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true,
                    stepSize: 1
                }
            }
        }
    });
</script>

</body>
</html>

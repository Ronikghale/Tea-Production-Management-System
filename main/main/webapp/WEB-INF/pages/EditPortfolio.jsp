<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.teaapp.model.Customer" %>
<%
    HttpSession sessionutil = request.getSession(false);
    Customer customer = (Customer) session.getAttribute("customer");
    if (customer == null) {
        response.sendRedirect(request.getContextPath() + "/Login");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/EditPortfolio.css">
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/Home">Home</a>
        <a href="${pageContext.request.contextPath}/Products">Products</a>
        <a href="${pageContext.request.contextPath}/Orders">My Orders</a>
        <a href="${pageContext.request.contextPath}/Logout">Logout</a>
    </div>

    <div class="profile-container">
        <h2>Edit Your Profile</h2>

        <form action="${pageContext.request.contextPath}/EditPortfolio" method="post">
            <label>First Name:</label>
            <input type="text" name="firstName" value="<%= customer.getFirstName() %>" required><br>

            <label>Last Name:</label>
            <input type="text" name="lastName" value="<%= customer.getLastName() %>" required><br>

            <label>Email Address:</label>
            <input type="email" name="emailAddress" value="<%= customer.getEmailAddress() %>" required><br>

            <label>Phone Number:</label>
            <input type="number" name="phoneNumber" value="<%= customer.getPhoneNumber() %>" required><br>

            <button type="submit">Update Profile</button>
        </form>
    </div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contact Us - Hatry Patti</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ContactUs.css">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="container">
        <h1>Contact Us</h1>
        <form method="post" action="contact">
            <label>Name:</label>
            <input type="text" name="name" required>
            <label>Email:</label>
            <input type="email" name="email" required>
            <label>Message:</label>
            <textarea name="message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
        <p>📍 Maijogmail Gaupalika, Ward No. 4, Jhapa, Nepal</p>
        <p>📧 Email: info@hatrypatti.com | ☎ Phone: +977-9800000000</p>
    </div>
<%@ include file="footer.jsp" %>   
</body>
</html>
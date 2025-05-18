<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Contact Us - Hatey Patti</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ContactUs.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <%@ include file="header.jsp" %>
    
    <div class="hero-section">
        <div class="overlay"></div>
        <div class="hero-content">
            <h1>Get In Touch</h1>
            <p>We'd love to hear from you. Reach out with any questions about our organic teas.</p>
        </div>
    </div>
    
    <div class="contact-container">
        <div class="contact-info">
            <h2>Contact Information</h2>
            <div class="contact-item">
                <i class="fas fa-map-marker-alt"></i>
                <p>Suryadaya, Nagarpalika Ward No. 4, Ilam, Nepal</p>
            </div>
            <div class="contact-item">
                <i class="fas fa-envelope"></i>
                <p>info@hateypatti.com</p>
            </div>
            <div class="contact-item">
                <i class="fas fa-phone"></i>
                <p>+977-9800000000</p>
            </div>
            <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-pinterest"></i></a>
            </div>
            <div class="map-container">
                <img src="${pageContext.request.contextPath}/images/map-placeholder.jpg" alt="Location Map" class="location-map">
            </div>
        </div>
        
        <div class="contact-form">
            <h2>Send Us a Message</h2>
            <form method="post" action="contact">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject">
                </div>
                
                <div class="form-group">
                    <label for="message">Your Message</label>
                    <textarea id="message" name="message" rows="5" required></textarea>
                </div>
                
                <button type="submit" class="submit-btn">Send Message</button>
            </form>
        </div>
    </div>
    
    <!-- Include Footer -->
    <%@ include file="footer.jsp" %>
</body>
</html>
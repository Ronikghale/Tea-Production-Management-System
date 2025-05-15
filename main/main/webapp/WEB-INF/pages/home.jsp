<%@ page session="true" %>
<%@ page import="com.teaapp.model.Customer" %>

<% 
Customer customer = (Customer) session.getAttribute("customer");
String role = (String) session.getAttribute("role");
if (customer == null) {
    response.sendRedirect(request.getContextPath() + "/Login");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hatey Patti Organic Tea</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css?v=1.2.1">
</head>
<body>

   <%@ include file = "header.jsp" %> 

    <!-- Welcome Message -->
    <div class="welcome-msg">
        <div class="container">
            Welcome, <%= customer.getFirstName() %>!
        </div>
    </div>

   
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Fresh From Our Gardens to Your Cup</h1>
            <p>Pure, Organic, and Locally Sourced Tea for a healthier and more vibrant lifestyle.</p>
            <a href="#" class="btn">Shop Now</a>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <div class="section-title">
                <h2>Our Premium Teas</h2>
            </div>
            
            <div class="features-grid">
                <div class="feature-card">
                    <div class="feature-img">
                        <img src="${pageContext.request.contextPath}/images/hateypatti black.png" alt="Green Tea">
                    </div>
                    <div class="feature-content">
                        <h3>Green Tea</h3>
                        <p>Naturally rich in antioxidants, our green tea helps boost metabolism and improve brain function.</p>
                        <a href="#" class="feature-btn">Learn More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-img">
                        <img src="${pageContext.request.contextPath}/images/hateypatti black.png" alt="Green Tea">
                    </div>
                    <div class="feature-content">
                        <h3>Black Tea</h3>
                        <p>Strong and aromatic black tea harvested and processed using traditional methods.</p>
                        <a href="#" class="feature-btn">Learn More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-img">
                        <img src="${pageContext.request.contextPath}/images/hateypatti black.png" alt="Green Tea">
                    </div>
                    <div class="feature-content">
                        <h3>Herbal Tea</h3>
                        <p>Soothing herbal infusions crafted from hand-picked herbs and flowers from our gardens.</p>
                        <a href="#" class="feature-btn">Learn More <i class="fas fa-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section class="about">
        <div class="container about-container">
            <div class="about-image">
                <img src="${pageContext.request.contextPath}/images/planting.png" alt="Tea Plantation">
            </div>
            <div class="about-content">
                <h2>Hatey Patti</h2>
                <p>Organic tea for a healthier life. We are committed to producing the finest quality organic teas while preserving the environment and supporting local farmers.</p>
                <p>Our tea gardens are nestled in the pristine hills, where pure air and rich soil contribute to the exceptional flavor and aroma of our teas.</p>
                <a href="#" class="btn btn-outline">Learn Our Story</a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-container">
                <div class="footer-col">
                    <h3>Hatey Patti</h3>
                    <p>Organic tea for a healthier life.</p>
                    <p>We are committed to sustainable farming practices and bringing you the finest tea experience.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-pinterest"></i></a>
                    </div>
                </div>
                
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <ul class="footer-links">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Products</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
                
                <div class="footer-col">
                    <h3>Contact Us</h3>
                    <p><i class="fas fa-map-marker-alt"></i> Ilam, Kanyam</p>
                    <p><i class="fas fa-phone"></i> 9765562587</p>
                    <p><i class="fas fa-envelope"></i> info@hateypatti.com</p>
                </div>
                
                <div class="footer-col">
                    <h3>Newsletter</h3>
                    <p>Subscribe to our newsletter for the latest updates and offers.</p>
                    <form class="newsletter-form">
                        <input type="email" placeholder="Your Email">
                        <button type="submit" class="btn">Subscribe</button>
                    </form>
                </div>
            </div>
            
            <div class="copyright">
                <p>© 2025 Hatey Patti. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>
</html>
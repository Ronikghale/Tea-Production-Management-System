<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Hatey Patti</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Aboutus.css">
    
</head>
<body>
    <!-- Include Header -->
   <%@ include file = "header.jsp" %> 
    
    <!-- Hero Section -->
    <section class="about-hero">
        <div class="hero-background" style="background-image: url('${pageContext.request.contextPath}/images/backgroundtea.jpeg');"></div>
        <div class="hero-content">
            <h1>Discover Hatey Patti</h1>
            <p>Where tradition meets purity — delivering the finest organic tea from the heart of the Himalayas.</p>
        </div>
        <div class="scroll-down">
            <i class="fas fa-chevron-down"></i>
        </div>
    </section>
    
    <!-- Our Story Section -->
    <section class="our-story">
        <div class="content-wrapper">
            <div class="section-header">
                <h2>Our Story</h2>
            </div>
            <div class="story-content">
                <div class="story-text">
                    <p>Founded in 2022, Hatry Patti was born from a passion for authentic tea and a deep respect for Nepalese tea traditions. Our journey began when our founders discovered the exceptional quality of hand-picked tea leaves from the eastern hills of Nepal.</p>
                    <p>Working closely with small-scale farmers, we've created a sustainable partnership that honors both tradition and innovation. Every leaf we select tells a story of generations of tea cultivation expertise, carefully preserved and shared with the world.</p>
                    <p>Today, Hatry Patti stands as a bridge between these skilled Himalayan farmers and tea enthusiasts worldwide who value purity, sustainability, and exceptional taste.</p>
                </div>
                <div class="story-image">
                    <img src="${pageContext.request.contextPath}/images/backgroundtea.jpeg" alt="Tea Farm in Nepal">
                </div>
            </div>
        </div>
    </section>
    
    <!-- Mission Section -->
    <section class="our-mission">
        <i class="fas fa-leaf leaf-bg leaf-1"></i>
        <i class="fas fa-leaf leaf-bg leaf-2"></i>
        <div class="content-wrapper">
            <div class="section-header">
                <h2>Our Mission</h2>
            </div>
            <div class="mission-content">
                <div class="mission-icon">
                    <i class="fas fa-mountain"></i>
                </div>
                <p>"To connect tea lovers around the world with authentic, sustainable Nepali tea — grown with love, hand-picked with care, and crafted with tradition while empowering the communities that nurture these precious leaves."</p>
            </div>
        </div>
    </section>
    
    <!-- Features Section -->
    <section class="features">
        <div class="content-wrapper">
            <div class="section-header">
                <h2>What Makes Us Different</h2>
            </div>
            <div class="feature-grid">
                <div class="feature-box">
                    <div class="feature-icon">
                        <i class="fas fa-leaf"></i>
                    </div>
                    <h3>100% Organic</h3>
                    <p>Our teas are grown using natural farming methods without chemicals or pesticides, ensuring each cup is as pure as nature intended.</p>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <i class="fas fa-globe-asia"></i>
                    </div>
                    <h3>Himalayan Origin</h3>
                    <p>Sourced exclusively from Nepal's pristine mountain regions, where ideal climate and soil conditions produce teas of exceptional character.</p>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <i class="fas fa-hands-helping"></i>
                    </div>
                    <h3>Community Focused</h3>
                    <p>We invest in local farming communities, providing fair compensation and supporting sustainable agricultural practices.</p>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <i class="fas fa-seedling"></i>
                    </div>
                    <h3>Hand-Harvested</h3>
                    <p>Every leaf is carefully selected and hand-picked by skilled farmers, ensuring only the finest quality reaches your cup.</p>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <i class="fas fa-recycle"></i>
                    </div>
                    <h3>Eco-Friendly</h3>
                    <p>From farm to packaging, we prioritize sustainable practices that protect the environment for future generations.</p>
                </div>
                <div class="feature-box">
                    <div class="feature-icon">
                        <i class="fas fa-award"></i>
                    </div>
                    <h3>Award-Winning</h3>
                    <p>Our teas have been recognized for their exceptional quality, flavor profile, and ethical sourcing practices.</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Team Section -->
    <section class="our-team">
        <div class="content-wrapper">
            <div class="section-header">
                <h2>Meet Our Team</h2>
            </div>
            <div class="team-members">
                <div class="team-member">
                    <div class="member-image">
                        <img src="${pageContext.request.contextPath}/images/team/team-member-1.jpg" alt="Team Member" onerror="this.src='${pageContext.request.contextPath}/images/team-placeholder.jpg'">
                    </div>
                    <div class="member-info">
                        <h3>Ronik Ghale</h3>
                        <span>Founder & Tea Master</span>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="team-member">
                    <div class="member-image">
                        <img src="${pageContext.request.contextPath}/images/team/team-member-2.jpg" alt="Team Member" onerror="this.src='${pageContext.request.contextPath}/images/team-placeholder.jpg'">
                    </div>
                    <div class="member-info">
                        <h3>Munal Pandey</h3>
                        <span>Head of Sustainability</span>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="team-member">
                    <div class="member-image">
                        <img src="${pageContext.request.contextPath}/images/team/team-member-3.jpg" alt="Team Member" onerror="this.src='${pageContext.request.contextPath}/images/team-placeholder.jpg'">
                    </div>
                    <div class="member-info">
                        <h3>Bimarsha Raut</h3>
                        <span>Community Manager</span>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Include Footer -->
    <%@ include file="footer.jsp" %>
    
    <script>
        // Smooth scroll for the scroll-down button
        document.querySelector('.scroll-down').addEventListener('click', function() {
            document.querySelector('.our-story').scrollIntoView({ 
                behavior: 'smooth' 
            });
        });
        
        // Animation for feature boxes on scroll
        document.addEventListener('DOMContentLoaded', function() {
            const featureBoxes = document.querySelectorAll('.feature-box');
            
            // Initialize all boxes
            featureBoxes.forEach((box, index) => {
                box.style.opacity = 0;
                box.style.transform = 'translateY(30px)';
                box.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
                
                // Set timeout to animate each box sequentially
                setTimeout(() => {
                    box.style.opacity = 1;
                    box.style.transform = 'translateY(0)';
                }, 300 + (index * 150));
            });

        });
    </script>
</body>
</html>
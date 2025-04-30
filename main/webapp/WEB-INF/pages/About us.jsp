<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Hatey Patti Organic Tea</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background-color: #f8f8f8;
            color: #333;
            line-height: 1.6;
        }
        
        header {
            background-color: #000;
            padding: 20px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
            color: white;
            text-decoration: none;
        }
        
        .logo h1 {
            font-size: 24px;
            margin-right: 10px;
        }
        
        .logo span {
            font-size: 14px;
            opacity: 0.8;
        }
        
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav ul li {
            margin: 0 15px;
        }
        
        nav ul li a {
            color: white;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        nav ul li a:hover {
            color: #4CAF50;
        }
        
        .cart-icon {
            color: white;
            font-size: 24px;
        }
        
        .hero {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('${pageContext.request.contextPath}/images/teagarden.jpeg');
            background-size: cover;
            background-position: center;
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }
        
        .hero h2 {
            font-size: 42px;
            font-weight: 700;
            margin-bottom: 20px;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 80px 20px;
        }
        
        .about-section {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 80px;
        }
        
        .about-content {
            flex: 1;
            padding-right: 40px;
            min-width: 300px;
        }
        
        .about-content h3 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #4CAF50;
        }
        
        .about-content p {
            margin-bottom: 20px;
            font-size: 16px;
        }
        
        .emphasis {
            font-style: italic;
            color: #4CAF50;
        }
        
        .about-image {
            flex: 1;
            min-width: 300px;
            overflow: hidden;
            border-radius: 10px;
        }
        
        .about-image img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            transition: transform 0.5s;
        }
        
        .about-image:hover img {
            transform: scale(1.05);
        }
        
        .values {
            background-color: #f1f9f1;
            padding: 80px 0;
            margin: 0 -20px;
        }
        
        .values-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .values-heading {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .values-heading h3 {
            font-size: 32px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .values-heading p {
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .values-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        
        .value-card {
            width: calc(33.33% - 20px);
            background-color: white;
            border-radius: 10px;
            padding: 30px 25px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        
        .value-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }
        
        .value-icon {
            font-size: 36px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .value-card h4 {
            font-size: 22px;
            margin-bottom: 15px;
        }
        
        .value-card p {
            font-size: 15px;
            color: #666;
        }
        
        .team {
            padding: 80px 0;
        }
        
        .team-heading {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .team-heading h3 {
            font-size: 32px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .team-heading p {
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .team-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        
        .team-member {
            width: calc(33.33% - 20px);
            margin-bottom: 40px;
            text-align: center;
        }
        
        .team-photo {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            overflow: hidden;
            margin: 0 auto 20px;
            border: 5px solid #f1f9f1;
        }
        
        .team-photo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }
        
        .team-member:hover .team-photo img {
            transform: scale(1.1);
        }
        
        .team-member h4 {
            font-size: 22px;
            margin-bottom: 5px;
        }
        
        .team-member p {
            color: #4CAF50;
            font-style: italic;
            margin-bottom: 15px;
        }
        
        .join-us {
            background-color: #4CAF50;
            padding: 80px 0;
            text-align: center;
            color: white;
            margin: 0 -20px;
        }
        
        .join-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .join-us h3 {
            font-size: 32px;
            margin-bottom: 20px;
        }
        
        .join-us p {
            font-size: 18px;
            margin-bottom: 30px;
        }
        
        .btn {
            display: inline-block;
            background-color: #fff;
            color: #4CAF50;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            border: 2px solid #fff;
        }
        
        .btn:hover {
            background-color: transparent;
            color: #fff;
        }
        
        footer {
            background-color: #222;
            color: white;
            padding: 50px 20px 20px;
            text-align: center;
        }
        
        .footer-links {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }
        
        .footer-links a {
            margin: 0 15px;
            color: white;
            text-decoration: none;
        }
        
        .footer-links a:hover {
            color: #4CAF50;
        }
        
        .copyright {
            font-size: 14px;
            opacity: 0.7;
        }
        
        @media (max-width: 768px) {
            .about-section {
                flex-direction: column;
            }
            
            .about-content {
                padding-right: 0;
                margin-bottom: 30px;
            }
            
            .value-card {
                width: 100%;
            }
            
            .team-member {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <a href="#" class="logo">
            <h1>Hatey Patti</h1>
            <span>Organic Tea</span>
        </a>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#" style="color: #4CAF50;">About</a></li>
                <li><a href="#">Our Products</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
        </nav>
        <div class="cart-icon">🛒</div>
    </header>
    
    <section class="hero">
        <div>
            <h2>Our Journey & Passion</h2>
        </div>
    </section>
    
    <div class="container">
        <section class="about-section">
            <div class="about-content">
                <h3>Our Story</h3>
                <p>Founded in 2010, Hatey Patti began as a small family-owned tea garden in the lush hills of Ilam, Nepal. What started as a passionate pursuit to create the purest organic tea has now blossomed into a globally recognized brand known for its exceptional quality and sustainable practices.</p>
                <p>Our name "Hatey Patti" - meaning "hand-picked leaves" in Bengali - reflects our commitment to traditional harvesting methods where only the finest tea leaves are carefully selected by our skilled tea pickers. This artisanal approach ensures that every cup of our tea delivers the authentic flavor and aroma that nature intended.</p>
                <p><span class="emphasis">"Tea is not just a beverage; it's a moment of tranquility in our busy lives."</span> - This philosophy guides everything we do at Hatey Patti, from cultivation to packaging.</p>
                <p>Over the years, we've expanded our tea gardens while staying true to our roots. Today, we proudly offer a diverse collection of premium organic teas that capture the essence of their origin while supporting sustainable agriculture and fair trade practices.</p>
            </div>
            <div class="about-image">
                <img src="${pageContext.request.contextPath}/images/TeaHome.jpg" alt="Hatey Patti Tea Garden">
            </div>
        </section>
    </div>
    
    <section class="values">
        <div class="values-container">
            <div class="values-heading">
                <h3>Our Core Values</h3>
                <p>These principles guide every decision we make, from the field to your cup.</p>
            </div>
            <div class="values-grid">
                <div class="value-card">
                    <div class="value-icon">🌱</div>
                    <h4>Organic Integrity</h4>
                    <p>We maintain strict organic standards throughout our cultivation process, using no pesticides or artificial fertilizers. Our gardens work in harmony with nature, preserving the delicate ecosystem that produces exceptional tea.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon">♻️</div>
                    <h4>Sustainability</h4>
                    <p>From biodegradable packaging to renewable energy in our processing facilities, sustainability is at the heart of our operations. We're committed to minimizing our environmental footprint while maximizing positive impact.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon">🤝</div>
                    <h4>Fair Trade</h4>
                    <p>We believe in equitable partnerships with our farmers and workers. By providing fair wages, safe working conditions, and community development programs, we ensure that everyone involved in creating our teas prospers.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon">🔍</div>
                    <h4>Transparency</h4>
                    <p>We openly share information about our sourcing, processing, and business practices. Each package can be traced back to the specific garden where the leaves were harvested, giving you complete visibility.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon">🌿</div>
                    <h4>Artisanal Quality</h4>
                    <p>We preserve traditional tea-making methods while incorporating modern innovations that enhance quality. Our master tea blenders craft each variety with precision and care to ensure exceptional taste.</p>
                </div>
                <div class="value-card">
                    <div class="value-icon">💫</div>
                    <h4>Customer Delight</h4>
                    <p>Your satisfaction is our priority. We're dedicated to providing exceptional teas and experiences that exceed expectations and bring moments of joy to your daily routine.</p>
                </div>
            </div>
        </div>
    </section>
    
    <div class="container">
        <section class="team">
            <div class="team-heading">
                <h3>Meet Our Team</h3>
                <p>The passionate people behind Hatey Patti who bring our vision to life.</p>
            </div>
            <div class="team-grid">
                <div class="team-member">
                    <div class="team-photo">
                        <img src="/api/placeholder/200/200" alt="Team Member">
                    </div>
                    <h4>Ronik Ghale</h4>
                    <p>Founder & Tea Master</p>
                    <span>With over 25 years of experience in tea cultivation, Ronik's expertise guides our production processes and quality standards.</span>
                </div>
                <div class="team-member">
                    <div class="team-photo">
                        <img src="/api/placeholder/200/200" alt="Team Member">
                    </div>
                    <h4>Siddhart Singh</h4>
                    <p>Head of Sustainability</p>
                    <span>Siddhart oversees our environmental initiatives and ensures our practices remain sustainable and regenerative.</span>
                </div>
                <div class="team-member">
                    <div class="team-photo">
                        <img src="/api/placeholder/200/200" alt="Team Member">
                    </div>
                    <h4>Munal Pandey</h4>
                    <p>Master Blender</p>
                    <span>Munal's exceptional palate and creativity result in our unique and flavorful tea blends that customers adore.</span>
                </div>
            </div>
        </section>
    </div>
    
    <section class="join-us">
        <div class="join-container">
            <h3>Join Our Tea Journey</h3>
            <p>Experience the difference that pure, organic tea can make in your daily ritual. Whether you're a tea connoisseur or just beginning your exploration, we invite you to taste the care and passion in every cup of Hatey Patti tea.</p>
            <a href="#" class="btn">Shop Our Collection</a>
        </div>
    </section>
    
    <footer>
        <div class="footer-links">
            <a href="#">Home</a>
            <a href="#">About</a>
            <a href="#">Products</a>
            <a href="#">Tea Journal</a>
            <a href="#">Contact</a>
            <a href="#">Privacy Policy</a>
        </div>
        <p class="copyright">© 2025 Hatey Patti Organic Tea. All rights reserved.</p>
    </footer>
</body>
</html>
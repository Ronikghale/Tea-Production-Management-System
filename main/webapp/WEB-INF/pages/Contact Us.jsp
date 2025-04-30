<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Hatey Patti Organic Tea</title>
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
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('');
            background-size: cover;
            background-position: center;
            height: 250px;
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
        
        .contact-intro {
            text-align: center;
            margin-bottom: 60px;
        }
        
        .contact-intro h3 {
            font-size: 32px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .contact-intro p {
            font-size: 18px;
            max-width: 700px;
            margin: 0 auto;
        }
        
        .contact-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 80px;
        }
        
        .contact-form {
            flex: 1;
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            min-width: 300px;
            margin-right: 30px;
        }
        
        .contact-form h3 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #4CAF50;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }
        
        .form-control:focus {
            outline: none;
            border-color: #4CAF50;
        }
        
        textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }
        
        .btn-submit {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 30px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .btn-submit:hover {
            background-color: #3e8e41;
            transform: translateY(-3px);
        }
        
        .contact-info {
            flex: 1;
            min-width: 300px;
        }
        
        .info-card {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            margin-bottom: 20px;
            transition: transform 0.3s;
        }
        
        .info-card:hover {
            transform: translateY(-5px);
        }
        
        .info-card h4 {
            display: flex;
            align-items: center;
            font-size: 20px;
            margin-bottom: 15px;
            color: #4CAF50;
        }
        
        .info-card h4 .icon {
            margin-right: 10px;
            font-size: 24px;
        }
        
        .info-card p, .info-card a {
            margin: 5px 0;
            color: #666;
        }
        
        .info-card a {
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .info-card a:hover {
            color: #4CAF50;
        }
        
        .map-container {
            border-radius: 10px;
            overflow: hidden;
            height: 300px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            margin-top: 30px;
        }
        
        .map-container iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
        
        .faq-section {
            background-color: #f1f9f1;
            padding: 80px 0;
            margin: 0 -20px;
        }
        
        .faq-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        .faq-heading {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .faq-heading h3 {
            font-size: 32px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .faq-item {
            background-color: white;
            border-radius: 10px;
            padding: 25px;
            margin-bottom: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }
        
        .faq-question {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 15px;
            color: #333;
        }
        
        .faq-answer {
            color: #666;
        }
        
        .follow-section {
            text-align: center;
            padding: 40px 0;
        }
        
        .follow-section h3 {
            font-size: 24px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .social-icons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        
        .social-icon {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 50px;
            height: 50px;
            background-color: #4CAF50;
            color: white;
            border-radius: 50%;
            font-size: 20px;
            transition: all 0.3s;
            text-decoration: none;
        }
        
        .social-icon:hover {
            transform: translateY(-5px);
            background-color: #3e8e41;
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
            .contact-wrapper {
                flex-direction: column;
            }
            
            .contact-form {
                margin-right: 0;
                margin-bottom: 30px;
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
                <li><a href="#">About</a></li>
                <li><a href="#">Our Products</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#" style="color: #4CAF50;">Contact Us</a></li>
            </ul>
        </nav>
        <div class="cart-icon">🛒</div>
    </header>
    
    <section class="hero">
        <div>
            <h2>Let's Connect</h2>
        </div>
    </section>
    
    <div class="container">
        <div class="contact-intro">
            <h3>Get in Touch</h3>
            <p>We'd love to hear from you! Whether you have a question about our products, need assistance with an order, or want to learn more about our tea cultivation practices, our team is here to help.</p>
        </div>
        
        <div class="contact-wrapper">
            <div class="contact-form">
                <h3>Send Us a Message</h3>
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" id="name" name="name" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" name="subject" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Your Message</label>
                        <textarea id="message" name="message" class="form-control" required></textarea>
                    </div>
                    <button type="submit" class="btn-submit">Send Message</button>
                </form>
            </div>
            
            <div class="contact-info">
                <div class="info-card">
                    <h4><span class="icon"></span> Visit Us</h4>
                    <p>Hatey Patti Tea Estate</p>
                    <p>42 Kanyam, Ilam</p>
                    <p>Mechi Highway, ILam - 785001</p>
                </div>
                
                <div class="info-card">
                    <h4><span class="icon"></span> Call Us</h4>
                    <p><a href="tel:+919876543210">+91 9876 543 210</a> (Customer Support)</p>
                    <p><a href="tel:+919876543211">+91 9876 543 211</a> (Business Inquiries)</p>
                </div>
                
                <div class="info-card">
                    <h4><span class="icon">️</span> Email Us</h4>
                    <p><a href="mailto:info@hateypatti.com">info@hateypatti.com</a> (General Inquiries)</p>
                    <p><a href="mailto:support@hateypatti.com">support@hateypatti.com</a> (Customer Support)</p>
                    <p><a href="mailto:wholesale@hateypatti.com">wholesale@hateypatti.com</a> (Wholesale)</p>
                </div>
                
                <div class="map-container">
                    <img src="/api/placeholder/600/300" alt="Map location" style="width: 100%; height: 100%; object-fit: cover;">
                </div>
            </div>
        </div>
    </div>
    
    <section class="faq-section">
        <div class="faq-container">
            <div class="faq-heading">
                <h3>Frequently Asked Questions</h3>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">What are your shipping times?</div>
                <div class="faq-answer">We process all orders within 1-2 business days. Domestic shipping typically takes 3-5 business days, while international shipping can take 7-14 business days depending on the destination country.</div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">Do you offer wholesale options?</div>
                <div class="faq-answer">Yes, we offer wholesale pricing for cafes, restaurants, and retailers. Please contact us at wholesale@hateypatti.com for more information about our wholesale program and pricing.</div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">Can I visit your tea gardens?</div>
                <div class="faq-answer">Absolutely! We offer guided tours of our tea gardens and processing facilities. Tours need to be booked at least two weeks in advance. Please contact us for availability and pricing.</div>
            </div>
            
            <div class="faq-item">
                <div class="faq-question">Are your teas certified organic?</div>
                <div class="faq-answer">Yes, all our teas are certified organic by international certification bodies including USDA Organic, EU Organic, and India Organic. Our certifications ensure that our teas are grown without synthetic pesticides or fertilizers.</div>
            </div>
        </div>
    </section>
    
    <div class="container">
        <div class="follow-section">
            <h3>Follow Us on Social Media</h3>
            <div class="social-icons">
                <a href="#" class="social-icon">f</a>
                <a href="#" class="social-icon">in</a>
                <a href="#" class="social-icon">📷</a>
                <a href="#" class="social-icon">🐦</a>
                <a href="#" class="social-icon">P</a>
            </div>
        </div>
    </div>
    
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
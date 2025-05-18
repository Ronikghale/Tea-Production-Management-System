<header class="main-header">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/header.css?v=1.3.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <div class="header-container">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/images/tealogo.png" alt="Hatey Patti Logo">
            <div class="logo-text"> <span></span></div>
        </div>

        <nav class="main-nav">
            <ul class="nav-links">
                <li><a href="${pageContext.request.contextPath}/home"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="${pageContext.request.contextPath}/about"><i class="fas fa-leaf"></i> About</a></li>
                <li><a href="${pageContext.request.contextPath}/product"><i class="fas fa-mug-hot"></i> Products</a></li>
                <li><a href="${pageContext.request.contextPath}/contact"><i class="fas fa-envelope"></i> Contact</a></li>
            </ul>
        </nav>

    <div class="nav-icons">
    <a href="${pageContext.request.contextPath}/search" class="nav-icon"><i class="fas fa-search"></i></a>
    <a href="${pageContext.request.contextPath}/Cart" class="nav-icon"><i class="fas fa-shopping-cart"></i></a>
    <a href="${pageContext.request.contextPath}/portfolio" class="nav-icon"><i class="fas fa-user"></i></a>
    <a href="${pageContext.request.contextPath}/logout" class="nav-icon logout-btn">
        <i class="fas fa-sign-out-alt"></i> Logout
    </a>
</div>

</header>

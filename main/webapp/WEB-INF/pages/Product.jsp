<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hatry Patti | Our Products</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Product.css">
</head>
<body>

  <header class="hero">
    <h1>Our Products</h1>
    <p>Explore our authentic tea varieties and add that extra freshness in your lifestyle.</p>
  </header>
<form action = '/product'>
  <section class="products">
    <div class="product-card">
      <img src="images/tulsi.png" alt="Tulsi Green Tea">
      <h2>Tulsi Green Tea</h2>
      <p class="price"><span>Rs 320.00</span> <del>Rs 480.00</del></p>
      <p class="stars">★★★★☆</p>
      <button>Buy now</button>
    </div>

    <div class="product-card">
      <img src="images/white.png" alt="Tulsi White Tea">
      <h2>Tulsi White Tea</h2>
      <p class="price"><span>Rs 320.00</span> <del>Rs 480.00</del></p>
      <p class="stars">★★★★☆</p>
      <button>Buy now</button>
    </div>

    <div class="product-card">
      <img src="images/black.png" alt="Tulsi Black Tea">
      <h2>Tulsi Black Tea</h2>
      <p class="price"><span>Rs 320.00</span> <del>Rs 480.00</del></p>
      <p class="stars">★★★★☆</p>
      <button>Buy now</button>
    </div>

    <div class="product-card">
      <img src="images/Assam-Black-Tea-web.png" alt="Assam Black Tea">
      <h2>Assam Black Tea</h2>
      <p class="price"><span>Rs 180.00</span> <del>Rs 480.00</del></p>
      <p class="stars">★★★★☆</p>
      <button>Buy now</button>
    </div>

    <div class="product-card">
      <img src="images/Organic green.jpg" alt="Organic Green Tea">
      <h2>Organic Green Tea</h2>
      <p class="price"><span>Rs 220.00</span> <del>Rs 480.00</del></p>
      <p class="stars">★★★★☆</p>
      <button>Buy now</button>
    </div>

    <div class="product-card">
      <img src="images/cinnamon.jpeg" alt="Organic Cinnamon Tea">
      <h2>Organic Cinnamon Tea</h2>
      <p class="price"><span>Rs 220.00</span> <del>Rs 480.00</del></p>
      <p class="stars">★★★★☆</p>
      <button>Buy now</button>
    </div>
  </section>
  </form>

</body>
</html>

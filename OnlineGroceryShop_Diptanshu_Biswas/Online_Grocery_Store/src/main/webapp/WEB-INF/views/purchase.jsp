<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Page</title>

<link rel="icon" href="https://cdn-icons-png.flaticon.com/512/11000/11000493.png"
        type="image/x-icon" />
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- FontAwesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Animate.css for animations -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

<style>
    body {
        background: linear-gradient(to right, #00c6ff, #0072ff);
        height: 100vh;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        font-family: 'Poppins', sans-serif;
        color: #fff;
    }
    .form-container {
        background: rgba(255, 255, 255, 0.1);
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        width: 350px;
        animation: fadeIn 1.5s ease;
    }
    label {
        margin-top: 10px;
        font-weight: bold;
    }
    input[type="text"], input[type="number"] {
        margin-top: 5px;
        margin-bottom: 15px;
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 10px;
        box-shadow: inset 0 2px 5px rgba(0,0,0,0.1);
    }
    input[type="submit"], .home-btn {
        margin-top: 15px;
        padding: 10px 20px;
        border: none;
        border-radius: 50px;
        background: #00ffab;
        color: #005555;
        font-weight: bold;
        transition: all 0.4s ease;
        width: 100%;
    }
    input[type="submit"]:hover, .home-btn:hover {
        background: #005555;
        color: #00ffab;
        transform: scale(1.05);
        box-shadow: 0 8px 16px rgba(0,0,0,0.4);
    }
    a {
        margin-top: 20px;
        text-decoration: none;
        width: 350px;
    }
</style>
</head>
<body>

<div class="form-container animate__animated animate__fadeInDown">
    <form action="purchase">
        <div class="mb-3">
            <label><i class="fas fa-box"></i> Enter Product Name to Purchase:</label>
            <input type="text" name="name" placeholder="Enter Item Name" required>
        </div>
        <div class="mb-3">
            <label><i class="fas fa-sort-numeric-up"></i> Enter Product Quantity:</label>
            <input type="number" name="quantity" placeholder="Enter Quantity" min="1" required>
        </div>
        <input type="submit" value="Buy Now  🚀" class="btn">
    </form>
</div>

<a href="index.jsp">
    <button class="home-btn animate__animated animate__fadeInUp animate__delay-1s">
        <i class="fas fa-home"></i> Go to Home
    </button>
</a>

<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

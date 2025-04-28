<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Summary</title>

<link rel="icon" href="https://cdn-icons-png.flaticon.com/512/7572/7572360.png"
        type="image/x-icon" />

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- FontAwesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Animate.css for animations -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

<style>
    body {
        background: linear-gradient(135deg, #a18cd1, #fbc2eb);
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
    h1 {
        font-size: 2.5rem;
        margin-bottom: 30px;
        text-shadow: 2px 2px 5px rgba(0,0,0,0.3);
    }
    button {
        margin: 10px;
        font-size: 1.2rem;
        padding: 12px 25px;
        border: none;
        border-radius: 50px;
        background: #ffffff;
        color: #a18cd1;
        font-weight: bold;
        transition: all 0.4s ease;
        box-shadow: 0 8px 16px rgba(0,0,0,0.2);
    }
    button:hover {
        background: #a18cd1;
        color: #ffffff;
        transform: scale(1.1);
        box-shadow: 0 12px 24px rgba(0,0,0,0.4);
    }
    a {
        text-decoration: none;
    }
</style>
</head>
<body>

<h1 class="animate__animated animate__fadeInDown">
    <i class="fas fa-receipt"></i> Your Total Purchase Amount is ₹${bill}
</h1>

<a href="buy">
    <button class="animate__animated animate__fadeInUp">
        <i class="fas fa-shopping-cart"></i> Buy More
    </button>
</a> 

<br>

<a href="index.jsp">
    <button class="animate__animated animate__fadeInUp animate__delay-1s">
        <i class="fas fa-home"></i> Go to Home
    </button>
</a>
<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

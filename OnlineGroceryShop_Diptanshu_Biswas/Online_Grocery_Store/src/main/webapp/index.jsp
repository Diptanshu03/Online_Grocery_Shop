<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Grocery Shop</title>
<link rel="icon" href="https://cdn.pixabay.com/photo/2017/03/29/04/09/shopping-icon-2184065_640.png"
        type="image/x-icon" />

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<!-- FontAwesome for icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Animate.css for smoother animations -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

<!-- Custom CSS -->
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: url('https://png.pngtree.com/background/20210710/original/pngtree-shopping-mall-supermarket-selection-merchandise-poster-background-material-picture-image_1048684.jpg') no-repeat center center fixed;
        background-size: cover;
        height: 100vh;
        margin: 0;
        padding-top: 70px;
        overflow-x: hidden;
    }
    .navbar {
        background: rgba(64, 224, 208, 0.7);
        backdrop-filter: blur(10px);
        box-shadow: 0 2px 10px rgba(0,0,0,0.2);
    }
    .navbar-brand img {
        height: 45px;
        margin-right: 10px;
        animation: zoomIn 1s ease-in-out forwards;
    }
    .navbar-brand {
        font-weight: bold;
        font-size: 24px;
        color: #ffffff !important;
        display: flex;
        align-items: center;
    }
    .container-buttons {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 70px;
        animation: fadeIn 2s ease;
    }
    .btn-custom {
        width: 250px;
        margin: 15px;
        font-size: 18px;
        font-weight: 600;
        border-radius: 30px;
        border: 2px solid #40E0D0;
        background: rgba(255, 255, 255, 0.2);
        color: #40E0D0;
        backdrop-filter: blur(8px);
        transition: all 0.4s ease;
    }
    .btn-custom:hover {
        background: linear-gradient(45deg, #40E0D0, #00ced1);
        color: white;
        transform: scale(1.1);
        box-shadow: 0 8px 16px rgba(0,0,0,0.3);
        border: 2px solid transparent;
    }
    @keyframes fadeIn {
        0% { opacity: 0; transform: translateY(50px); }
        100% { opacity: 1; transform: translateY(0); }
    }
    @keyframes zoomIn {
        0% { transform: scale(0.5); opacity: 0; }
        100% { transform: scale(1); opacity: 1; }
    }
</style>

</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="https://cdn-icons-png.flaticon.com/512/3081/3081559.png" alt="Grocery Logo">
            GroceryShop
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

<!-- Main Buttons -->
<div class="container-buttons animate__animated animate__fadeInUp">
    <a href="add">
        <button class="btn btn-custom">
            <i class="fas fa-plus-circle"></i> Add Items
        </button>
    </a>
    <a href="all">
        <button class="btn btn-custom">
            <i class="fas fa-list"></i> Display All Items
        </button>
    </a>
    <a href="search">
        <button class="btn btn-custom">
            <i class="fas fa-search"></i> Search Items
        </button>
    </a>
    <a href="buy">
        <button class="btn btn-custom">
            <i class="fas fa-shopping-cart"></i> Purchase Items
        </button>
    </a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

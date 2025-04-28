<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Products</title>
<link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2037/2037622.png"
        type="image/x-icon" />

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">

<!-- FontAwesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Custom CSS -->
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);
        min-height: 100vh;
        padding-top: 50px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h1 {
        color: #6a0572;
        font-weight: 700;
        margin-bottom: 30px;
        animation: fadeSlideIn 1.5s ease;
    }
    .table-container {
        width: 90%;
        max-width: 1000px;
        background: white;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        animation: zoomIn 1.2s ease;
    }
    table {
        margin-top: 10px;
    }
    thead {
        background: #6a0572;
        color: white;
    }
    th, td {
        text-align: center;
        padding: 15px;
    }
    tbody tr:hover {
        background-color: #ffe3ec;
        transition: 0.3s;
    }
    .home-btn {
        margin-top: 30px;
        display: flex;
        gap: 20px;
    }
    .home-btn a button {
        padding: 10px 25px;
        font-size: 18px;
        font-weight: bold;
        color: white;
        background: linear-gradient(to right, #f857a6, #ff5858);
        border: none;
        border-radius: 50px;
        transition: transform 0.4s, background 0.4s;
    }
    .home-btn a button:hover {
        transform: scale(1.1);
        background: linear-gradient(to right, #ff5858, #f857a6);
    }
    @keyframes fadeSlideIn {
        0% { opacity: 0; transform: translateY(-30px);}
        100% { opacity: 1; transform: translateY(0);}
    }
    @keyframes zoomIn {
        0% { transform: scale(0.8); opacity: 0;}
        100% { transform: scale(1); opacity: 1;}
    }
</style>

</head>
<body>

<h1><i class="fas fa-boxes-stacked"></i> Available Products</h1>

<div class="table-container">
    <div class="table-responsive">
        <table class="table table-hover table-bordered align-middle">
            <thead>
                <tr>
                    <th>PRODUCT ID</th>
                    <th>PRODUCT NAME</th>
                    <th>PRODUCT CATEGORY</th>
                    <th>PRODUCT PRICE</th>
                    <th>PRODUCT QUANTITY</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="list" items="${store}">
                    <tr>
                        <td>${list.id}</td>
                        <td>${list.name}</td>
                        <td>${list.category}</td>
                        <td>₹${list.price}</td>
                        <td>${list.quantity}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div class="home-btn">
    <a href="index.jsp"><button><i class="fas fa-home"></i> Go to Home</button></a>
    <a href="buy"><button><i class="bi bi-bag-fill"></i> Buy Items</button></a>
    <a href="add"><button><i class="fa-solid fa-plus"></i> Add More Items</button></a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

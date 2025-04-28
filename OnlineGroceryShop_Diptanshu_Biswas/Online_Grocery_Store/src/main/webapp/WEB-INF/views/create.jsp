<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Product</title>
<link rel="icon" href="https://cdn-icons-png.freepik.com/512/7078/7078310.png"
        type="image/x-icon" />

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500;700&display=swap" rel="stylesheet">

<!-- FontAwesome for Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Custom CSS -->
<style>
    body {
        font-family: 'Quicksand', sans-serif;
        background: linear-gradient(135deg, #c850c0, #4158d0);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden;
    }
    .form-container {
        background: rgba(255, 255, 255, 0.9);
        padding: 40px 30px;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        width: 400px;
        animation: slideFadeIn 1s ease forwards;
    }
    .form-container h2 {
        text-align: center;
        margin-bottom: 25px;
        font-weight: 700;
        color: #4158d0;
        position: relative;
    }
    .form-container h2::after {
        content: '';
        width: 60px;
        height: 3px;
        background: #c850c0;
        display: block;
        margin: 8px auto 0;
        border-radius: 5px;
    }
    .form-control {
        margin-bottom: 20px;
        border-radius: 8px;
        transition: all 0.4s ease;
    }
    .form-control:focus {
        border-color: #c850c0;
        box-shadow: 0 0 10px #c850c0;
    }
    .btn-primary {
        width: 100%;
        border-radius: 30px;
        font-weight: 600;
        background: linear-gradient(135deg, #4158d0, #c850c0);
        border: none;
        transition: all 0.4s;
    }
    .btn-primary:hover {
        transform: scale(1.05);
        background: linear-gradient(135deg, #c850c0, #4158d0);
    }
    .home-btn {
        margin-top: 20px;
        text-align: center;
    }
    .home-btn a {
        text-decoration: none;
        font-weight: bold;
        color: #4158d0;
        transition: color 0.3s;
        font-size: 18px;
    }
    .home-btn a:hover {
        color: #c850c0;
    }
    @keyframes slideFadeIn {
        0% {
            opacity: 0;
            transform: translateY(-50px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>

</head>
<body>

<div class="form-container">
    <h2><i class="fas fa-box-open"></i> Add Product</h2>

    <form:form action="save" modelAttribute="store">

        <div class="mb-3">
            <form:label path="name"><i class="fas fa-tag"></i> Product Name</form:label>
            <form:input path="name" type="text" cssClass="form-control" placeholder="Enter product name" />
        </div>

        <div class="mb-3">
            <form:label path="category"><i class="fas fa-stream"></i> Category</form:label>
            <form:input path="category" type="text" cssClass="form-control" placeholder="Enter product category" />
        </div>

        <div class="mb-3">
            <form:label path="price"><i class="fas fa-dollar-sign"></i> Price</form:label>
            <form:input path="price" type="number" cssClass="form-control" placeholder="Enter product price" />
        </div>

        <div class="mb-3">
            <form:label path="quantity"><i class="fas fa-boxes"></i> Stock Quantity</form:label>
            <form:input path="quantity" type="number" cssClass="form-control" placeholder="Enter stock quantity" />
        </div>

        <input type="submit" value="Add Item" class="btn btn-primary">
    </form:form>

    <div class="home-btn">
        <a href="index.jsp"><i class="fas fa-home"></i> Return to Home</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

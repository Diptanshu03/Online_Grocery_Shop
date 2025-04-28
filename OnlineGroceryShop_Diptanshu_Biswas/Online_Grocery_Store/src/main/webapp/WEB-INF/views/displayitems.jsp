<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
<link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2037/2037622.png"
        type="image/x-icon" />

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;700&display=swap" rel="stylesheet">

<!-- FontAwesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Custom CSS -->
<style>
    body {
        font-family: 'Montserrat', sans-serif;
        background: linear-gradient(135deg, #74ebd5 0%, #acb6e5 100%);
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
    }
    h1 {
        color: #003366;
        margin-bottom: 25px;
        animation: slideFadeDown 1s ease;
        font-weight: 700;
    }
    table {
        width: 90%;
        background: white;
        border-radius: 15px;
        overflow: hidden;
        box-shadow: 0px 8px 4px rgba(0, 0, 0, 0.2);
        animation: zoomIn 1s ease;
    }
    th, td {
        padding: 15px 20px;
        text-align: center;
        vertical-align: middle;
    }
    th {
        background: #003366;
        color: white;
        font-size: 18px;
    }
    td {
        font-size: 16px;
        color: #333;
    }
    tr:nth-child(even) {
        background-color: #eaf2fb;
    }
    tr:hover {
        background-color: #d4e3f7;
        transition: background-color 0.3s;
    }
    .btns {
        margin-top: 30px;
        display: flex;
        gap: 20px;
    }
    .btns a button {
        padding: 12px 25px;
        font-size: 16px;
        background: linear-gradient(to right, #004aad, #0072ff);
        color: white;
        border: none;
        border-radius: 50px;
        font-weight: bold;
        box-shadow: 0 5px 10px rgba(0,0,0,0.2);
        transition: all 0.3s ease;
    }
    .btns a button:hover {
        background: linear-gradient(to right, #0072ff, #004aad);
        transform: scale(1.1);
    }

    @keyframes slideFadeDown {
        from { opacity: 0; transform: translateY(-30px); }
        to { opacity: 1; transform: translateY(0); }
    }
    @keyframes zoomIn {
        from { opacity: 0; transform: scale(0.8); }
        to { opacity: 1; transform: scale(1); }
    }
</style>

</head>
<body>

<h1><i class="fas fa-boxes"></i> Search Results</h1>

<div class="table-responsive">
    <table class="table table-bordered align-middle text-center">
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

<div class="btns">
    <a href="index.jsp"><button><i class="fas fa-home"></i> Home</button></a>
    <a href="search"><button><i class="fas fa-search"></i> Search Again</button></a>
    <a href="buy"><button><i class="fa-solid fa-bag-shopping"></i> Buy Now</button></a>
    <a href="add"><button><i class="fa-solid fa-plus"></i> Add Items</button></a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Products</title>

<link rel="icon" href="https://cdn-icons-png.flaticon.com/512/4371/4371245.png"
        type="image/x-icon" />
        
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500;700&display=swap" rel="stylesheet">

<!-- FontAwesome Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!-- Custom CSS -->
<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(135deg, #00c6ff 0%, #0072ff 100%);
        min-height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 20px;
    }
    .search-container {
        background: white;
        padding: 40px 30px;
        border-radius: 20px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        width: 450px;
        margin-bottom: 30px;
        animation: slideFade 1.2s ease;
    }
    h1 {
        text-align: center;
        color: #0072ff;
        font-weight: 700;
        margin-bottom: 25px;
    }
    label {
        font-weight: bold;
        color: #444;
    }
    input[type="text"] {
        width: 100%;
        padding: 12px 15px;
        margin: 10px 0 20px 0;
        border: 2px solid #00c6ff;
        border-radius: 8px;
        transition: all 0.3s;
    }
    input[type="text"]:focus {
        border-color: #0072ff;
        box-shadow: 0 0 8px #00c6ff;
    }
    input[type="submit"] {
        width: 100%;
        padding: 12px;
        border: none;
        background: linear-gradient(to right, #00c6ff, #0072ff);
        color: white;
        font-size: 16px;
        font-weight: bold;
        border-radius: 8px;
        transition: background-color 0.3s, transform 0.3s;
    }
    input[type="submit"]:hover {
        background: linear-gradient(to right, #0072ff, #00c6ff);
        transform: scale(1.05);
    }
    .home-btn {
        margin-top: 20px;
    }
    .home-btn a button {
        padding: 10px 25px;
        font-size: 18px;
        background: #0072ff;
        color: white;
        border: none;
        border-radius: 50px;
        font-weight: bold;
        transition: background 0.3s, transform 0.3s;
    }
    .home-btn a button:hover {
        background: #00c6ff;
        transform: scale(1.1);
    }
    @keyframes slideFade {
        from { opacity: 0; transform: translateY(30px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>

</head>
<body>

<div class="search-container">
    <h1><i class="fas fa-search"></i> Search By Name</h1>
    <form action="byname">
        <label><i class="fas fa-tag"></i> Enter Item Name:</label>
        <input type="text" name="name" placeholder="e.g. Apple">
        <input type="submit" value="🔎 Search">
    </form>
</div>

<div class="search-container">
    <h1><i class="fas fa-list-alt"></i> Search By Category</h1>
    <form action="bycategory">
        <label><i class="fas fa-layer-group"></i> Enter Item Category:</label>
        <input type="text" name="category" placeholder="e.g. Electronics">
        <input type="submit" value="🔎 Search">
    </form>
</div>

<div class="home-btn">
    <a href="index.jsp"><button><i class="fas fa-home"></i> Go to Home</button></a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

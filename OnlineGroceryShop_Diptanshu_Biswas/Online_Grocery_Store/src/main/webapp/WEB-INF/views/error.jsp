<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Occur</title>
<link href="https://cdn0.iconfinder.com/data/icons/shift-free/32/Error-512.png" rel="icon" type="image/x-icon">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Animate.css for animations -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<!-- Bootstrap Icon CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
body {
	background: linear-gradient(to right, #ff416c, #ff4b2b);
	height: 100vh;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	font-family: 'Poppins', sans-serif;
	color: #fff;
	overflow: hidden;
}

h1 {
	font-size: 3rem;
	text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
	animation: fadeInDown 1.5s ease-in-out;
}

button {
	margin-top: 20px;
	font-size: 1.2rem;
	font-weight: bold; padding : 10px 30px;
	border: none;
	border-radius: 50px;
	background: #ffffff;
	color: #ff4b2b;
	transition: all 0.4s ease;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
	padding: 10px 30px;
}

button:hover {
	background: #ff4b2b;
	color: #ffffff;
	transform: scale(1.1);
	box-shadow: 0 12px 24px rgba(0, 0, 0, 0.4);
}
</style>
</head>
<body>

	<h1 class="animate__animated animate__fadeInDown">${massege}</h1>

	<br>

	<a href="index.jsp">
		<button class="animate__animated animate__fadeInUp animate__delay-1s">
			<i class="bi bi-house-door-fill"></i> Go to Home</button>
	</a>

	<!-- Bootstrap JS (optional) -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

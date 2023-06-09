<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	header {height:100px; background-color:#FF8000;}
	nav {height:50px; background-color:#FF8000;}
	.contents {min-height:500px;}
	footer {height:200px;}
</style>
</head>
<body>
	<div class="container">
		<header class="d-flex align-items-center justify-content-center">
			<h1 class="text-white">HONG당무 마켓</h1>
		</header>
		<nav>
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">리스트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white font-weight-bold">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="contents">
			<div class="display-4 p-5">물건 올리기</div>
			<form>
				<div class="d-flex justify-content-around px-2">
					<select class="form-control col-3">
						<option>-아이디 선택-</option>
					</select>
					<input type="text" name="title" class="form-control col-5" placeholder="제목">
					<input type="text" name="price" class="form-control col-3" placeholder="가격">
				</div>
			</form>
		</section>
		<footer class="d-flex align-items-center justify-content-center">
			<small class="text-secondary">Copyright 2023. HONG All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>
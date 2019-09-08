<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="jumbotron">
		<div class="container">
			<div class="row">
				<h1 class="display-3">상품추가하기</h1>
			</div>
		</div>
	</div>
	<div class="container">
			<form action="Addshow.jsp" name="newShopping" class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">상품 코드</label>
					<div class="col-sm-3">
						<input type="text" name="id" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품 이미지</label>
					<div class="col-sm-3">
						<input type="file" name="Images" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품 이름</label>
					<div class="col-sm-3">
						<input type="text" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품 사이즈</label>
					<div class="col-sm-3">
						<input type="radio" name="size" class="form-control">XS
						<input type="radio" name="size" class="form-control">S
						<input type="radio" name="size" class="form-control">M
						<input type="radio" name="size" class="form-control">L
						<input type="radio" name="size" class="form-control">XL
						<input type="radio" name="size" class="form-control">XXL
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품 가격</label>
					<div class="col-sm-3">
						<input type="text" name="Price" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-3">
						<input type="submit" value="등록" class="form-control">
					</div>
				</div>
			</form>
	</div>
</body>
</html>
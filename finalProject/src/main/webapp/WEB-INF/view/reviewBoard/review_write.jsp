<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>review_write.jsp</title>

<!-- Bootstrap core CSS -->
<link href="http://localhost:8080/finalProject/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="http://localhost:8080/finalProject/css/scrolling-nav.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">기프트립 </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">로그인</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">회원가입</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">마이페이지</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<section id="services" class="bg-light">
		<div class="container">
			<div class="row">
				<!--<div class="col-lg-8 mx-auto">  -->
				<table class="table table-bordered">
					<thead>
						<h2>후기글쓰기</h2>
					</thead>
					<tbody>
						<form action="" method="post" encType="multiplart/form-data">
							<tr>
								<th>제목 :</th>
								<td><input type="text" placeholder="제목을 입력하세요. "
									name="subject" class="" /></td>
							</tr>
							<tr>
								<th>내용 :</th>
								<td><textarea cols="30" placeholder="내용을 입력하세요. "
										name="content" class=""></textarea></td>
							</tr>
							<tr>
								<th>첨부파일 :</th>
								<td><input type="file" placeholder="파일을 선택하세요. "
									name="filename" class="" /></td>
							</tr>
							<tr>
								<th>비밀번호 :</th>
								<td><input type="password" placeholder="비밀번호를 입력하세요"
									class="" /></td>
							</tr>
							<tr>
								<td colspan="2"><input type="button" value="등록" onclick=""
									class="" /> <input type="button" value="글 목록" class=" "
									onclick="" /></td>
							</tr>
						</form>
				</table>
			</div>
			<!--</div>-->
	</section>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2017</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script
		src="http://localhost:8080/finalProject/vendor/jquery/jquery.min.js"></script>
	<script
		src="http://localhost:8080/finalProject/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="http://localhost:8080/finalProject/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom JavaScript for this theme -->
	<script
		src="http://localhost:8080/finalProject/js/scrolling-nav.js"></script>

</body>

</html>


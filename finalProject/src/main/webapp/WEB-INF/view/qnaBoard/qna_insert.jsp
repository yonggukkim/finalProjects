<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>qna_insert.jsp</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>
<!-- <script
		src="http://localhost:8080/finalProject/vendor/jquery/jquery.min.js"></script>
	<script
		src="http://localhost:8080/finalProject/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script
		src="http://localhost:8080/finalProject/vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="http://localhost:8080/finalProject/js/scrolling-nav.js"></script> -->

<!-- Custom styles for this template -->
<link href="http://localhost:8080/finalProject/css/scrolling-nav.css"
	rel="stylesheet">

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
						<h2>질문글쓰기</h2>
					</thead>
					<tbody>
						<form:form commandName="qna" action="qna_list">
							<form:hidden path="qnaNum" value="1" />
							<form:hidden path="memberNum" value="1" />
							<form:hidden path="staffNumber" value="1" />
							<form:hidden path="qnaCount" value="1" />
							<tr>
								<th>제목 :</th>
								<td><form:input path="qnaSubject" /></td>
							</tr>
							<tr>
								<th>내용 :</th>
								<td><form:input path="qnaContent" /></td>
							</tr>
							<tr>
								<th>첨부파일 :</th>
								<td><form:input path="qnaFile" /></td>
							</tr>
							<tr>
								<th>비밀번호 :</th>
								<td><form:password path="qnaPw" /></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="등록"  />
									<input type="button" value="글 목록" /></td>
							</tr>
						</form:form>
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

	<!-- 	<!-- Bootstrap core JavaScript -->

</body>

</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Scrolling Nav - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="http://localhost:8080/finalProject/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://localhost:8080/finalProject/css/scrolling-nav.css" rel="stylesheet">

  </head>
  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>


<body>
<div style="margin-top: 70px">
  <div class="container">
    <div class="row">
      <div class="col-sm-5 col-md-5 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">로그인</h5>

              <div class="form-label-group">
                <label for="inputId">아이디</label>
                <input type="email" id="inputId" class="form-control" placeholder="아이디를 입력해 주세요" required autofocus>
              </div>

              <div class="form-label-group">
              	<label for="inputPassword">비밀번호</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="비밀번호를 입력해 주세요" required>
              </div>

              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">비밀번호 기억하기</label>
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">로그인</button>
              <button class="btn btn-lg btn-secondary btn-block text-uppercase" type="submit">회원가입</button>

             
              </div>
               <div class="find_info">
					<a target="_blank" href="#" onclick="try{nclks('log.searchid',this,event)}catch(e){}">아이디 찾기</a> <span class="bar">|</span>
					<a target="_blank" href="#" onclick="try{nclks('log.searchpass',this,event)}catch(e){}">비밀번호 찾기</a> 				</div>
          </div>
        </div>
        </div>
    </div>
    </div>
</body>


    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="http://localhost:8080/finalProject/jquery/jquery.min.js"></script>
    <script src="http://localhost:8080/finalProject/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://localhost:8080/finalProject/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="http://localhost:8080/finalProject/js/scrolling-nav.js"></script>

  </body>

</html>
    
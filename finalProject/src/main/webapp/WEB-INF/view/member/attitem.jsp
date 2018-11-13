<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Insert title here</title>
    <!-- Bootstrap core CSS -->
    <link href="http://localhost:8080/finalProject/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://localhost:8080/finalProject/css/scrolling-nav.css" rel="stylesheet">


  </head>
  <body id="page-top">
  			<div style="margin-top: 70px">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">giftrip</a>
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
</div>
<div class="container">
    <form id="boardForm" name="boardForm" method="post">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                	<th>�̹���</th>
                    <th>��ȣ</th>
                    <th>����</th>
                    <th>�ۼ���</th>
                    <th>��¥</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="result" items="${list }" varStatus="status">
                    <tr>
                        <td><%-- <c:out value="${result.code }"/> --%>12312312312</td>
                        <td><a href='#' onClick='fn_view(${result.code})'><%-- <c:out value="${result.title }"/> --%>123123123</a></td>
                        <td><%-- <c:out value="${result.writer }"/> --%>12312312</td>
                        <td><%-- <c:out value="${result.reg_datetime }"/> --%>12312312</td>
                        <td></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
       <div>            
          
        </div>
    </form>
</div>
<script>


    

 
//����ȸ
function fn_view(code){
    
    var form = document.getElementById("boardForm");
    var url = "<c:url value='/board/viewContent.do'/>";
    url = url + "?code=" + code;
    
    form.action = url;    
    form.submit(); 
}
</script>
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

</html>
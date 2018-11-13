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
    <link href="./resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./resources/css/scrolling-nav.css" rel="stylesheet">

  </head>

<body>


</body>


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
              <a class="nav-link js-scroll-trigger" href="#services">Servicesssds</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    

    
			<div style="margin-top: 70px">
		  <div class="container">
        <div class="card card-signin my-7">
          <div class="card-body">
    			
			<div class="form-group" id="divId">
                <label for="inputId" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyAlphabetAndNumber" id="id" data-rule-required="true" placeholder="영어 숫자만 입력 가능" maxlength="30">
                </div>
            </div>

            <div class="form-group" id="divPassword">
                <label for="inputPassword" class="col-lg-2 control-label">패스워드</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="password" name="excludeHangul" data-rule-required="true" placeholder="패스워드" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divPasswordCheck">
                <label for="inputPasswordCheck" class="col-lg-2 control-label">패스워드 확인</label>
                <div class="col-lg-10">
                    <input type="password" class="form-control" id="passwordCheck" data-rule-required="true" placeholder="패스워드 확인" maxlength="30">
                </div>
            </div>
            <div class="form-group" id="divName">
                <label for="inputName" class="col-lg-2 control-label">이름</label>
                <div class="col-lg-10">
                    <input type="text" class="form-control onlyHangul" id="name" data-rule-required="true" placeholder="한글만 입력 가능합니다." maxlength="15">
                </div>
            </div>
            </div>
            
            <!-- 생년월일 -->
            
            
                        <div class="form-group" id="divEmail">
                <label for="inputEmail" class="col-lg-2 control-label">이메일</label>
                <div class="col-lg-10">
                    <input type="email" class="form-control" id="email" data-rule-required="true" placeholder="이메일을 입력해 주세요" maxlength="40">
                </div>
            </div>
            
            <!-- 휴대폰 국가 번호 -->
 <div class ="form-group">
                         생년월일
                    <script type="text/javascript">
                         var today = new Date();
                         var toyear = parseInt(today.getFullYear ());
                         var start = toyear;
                         var end = toyear -100;

                         document.write("<select name=birth1> ");
                         document.write("<option value='2015' selected>");
                         for (i=start;i>=end;i--) document.write("<option>"+i);
                         document.write("</select>년  ");

                         document.write("<select name=birth2>");
                         document.write("<option value='' selected>");
                         for (i=1;i<=12;i++) document.write("<option>"+i);
                         document.write("</select>월  ");

                         document.write("<select name=birth3>");
                         document.write("<option value='' selected>");
                         for (i=1;i<=31;i++) document.write("<option>"+i);
                         document.write("</select>일  </font>");
                         </script> 
             </div>
            <div class="form-group" id="divPhoneNumber">
                <label for="inputPhoneNumber" class="col-lg-2 control-label">휴대폰 번호</label>
                <div class="col-lg-10">
                    <input type="tel" class="form-control onlyNumber" id="phoneNumber" data-rule-required="true" placeholder="무선 전화번호를 입력하세요." maxlength="11">
                </div>
            </div>
             <div class="form-group" id="divTelNumber">
                <label for="inputTelNumber" class="col-lg-2 control-label">유선 번호</label>
                <div class="col-lg-10">
                    <input type="tel" class="form-control onlyNumber" id="telNumber" data-rule-required="true" placeholder="유선 전화번호를 입력하세요." maxlength="11">
                </div>
            </div>
         

<input type="text" id="sample6_postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample6_address" placeholder="주소">
<input type="text" id="sample6_address2" placeholder="상세주소">
​
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
​
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
​
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
​
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
​
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
​
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;
​
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>

            
            
            
            <div class="form-group">
                <label for="inputGender" class="col-lg-2 control-label">성별</label>
                <div class="col-lg-1">
                    <select class="form-control" id="gender">
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                </div>
            </div>
                                         <div class="form-group">
                <label for="inputMarriage" class="col-lg-2 control-label">결혼 유무</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="marriage" name="marriage" value="Y" checked>미혼
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="marriage" name="marriage" value="N">기혼
                    </label>
                </div>
            
            
            
            <div class="form-group">
                <label for="inputJob" class="col-lg-2 control-label">직업</label>
                <div class="col-lg-3">
                    <select class="form-control" id="job">
                        <option value="">회사원</option>
                        <option value="">자영업</option>
                        <option value="">주부</option>
                        <option value="">공무원</option>
                        <option value="">학생</option>
                        <option value="">기타</option>
                    </select>
                </div>
            </div>
            
            
             <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이벤트 이메일 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventMail" value="Y" checked> 수신
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventMail" value="N"> 수신거부
                    </label>
                </div>
                             <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이벤트 문자 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventSMS" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventSMS" value="N"> 동의하지 않습니다.
                    </label>
                </div>
                
                 <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이벤트 우편물 수신여부</label>
                <div class="col-lg-10">
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventMailItem" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventMailItem" value="N"> 동의하지 않습니다.
                    </label>
                </div>
                                 <div class="form-group">
                <label for="inputEmailReceiveYn" class="col-lg-2 control-label">이벤트 유선전화 수신여부</label>
                <div class="col-lg-10">  
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventTelephone" value="Y" checked> 동의합니다.
                    </label>
                    <label class="radio-inline">
                        <input type="radio" id="emailReceiveYn" name="eventTelephone" value="N"> 동의하지 않습니다.
                    </label>
                </div>
            </div>
            </div>
            </div>
        </div>
            
</div>


<button type="button" class="btn" style="margin-bottom:20px">작성 완료</button>
<button type="button" class="btn" style="margin-bottom:20px">취소</button>
</div>
</div>
</div>




    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="${pageContext.request.contextPath}/resources/js/scrolling-nav.js"></script>

  </body>

</html>
    
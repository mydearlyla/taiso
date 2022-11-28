<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<title>이메일 전송 완료</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/admin_my.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">


<!-- 블로그 로딩 코드 start -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
#waiting {
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    position: fixed;
    display: flex;
    background: white;
    z-index: 999;
    opacity: 0.9;
}
#waiting > img {
    display: flex;
    width: fit-content;
    height: fit-content;
    margin: auto;
}
</style>
<div id="waiting">
   <img src="./img/loading.gif">
</div>

<script type="text/javascript">
    $(window).on('load', function() {
        setTimeout(function(){
            $("#waiting").fadeOut();
        }, 300);
    });
</script>
<!-- 블로그 로딩 코드 end -->

<script type="text/javascript">
function javascript(){
    location.href='./EmailMainAction.me';
}
</script>


</head>

  <body>
  
  	<!-- 헤더 시작 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
  	<!-- 헤더 끝-->
	
	<!-- 중간제목 시작 -->
	<section class="hero-wrap hero-wrap-2 js-fullheight"
		style="background-image: url('images/bg_3.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs">
						<span class="mr-2"><a href="./ReservationMain.rez">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>회원가입 <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-3 bread">인증메일 전송</h1>
				</div>
			</div>
		</div>
	</section>
	<!-- 중간제목 끝 -->

	<!-- 본문 시작 -->
	<div class="bg-light">
	<div class="formbold-main-wrapper">
	  <!-- Author: FormBold Team -->
	  <!-- Learn More: https://formbold.com -->
	  <div class="formbold-form-wrapper">
	    <div class="formbold-form-title">
	        <h3>회원가입 이메일</h3>
	         <p>인증 메일이 전송되었습니다.</p>
	         <p>회원가입시 입력하셨던 이메일에 들어가셔서 인증해주세요.</p>
	    </div>
	        <button class="formbold-btn" onclick="javascript()"> 확 인 </button>
	    </div>
	  </div>
	</div>
	<!-- 본문 끝 -->

<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
	font-family: 'InfinitySans-RegularA1';
	font-weight: normal;
    font-style: normal;
}
.formbold-main-wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 80px;
}

.formbold-form-wrapper {
	margin: 0 auto;
    max-width: 570px;
    width: 100%;
    background: white;
    padding: 40px;
    border-radius: 14px;
    box-shadow: 20px 20px 80px rgb(218 218 218 / 47%)
}

.formbold-form-title {
  margin-bottom: 40px;
}
.formbold-form-title h3 {
    color: #000000;
    font-weight: 700;
    font-size: 28px;
    line-height: 35px;
    margin-bottom: 20px;
    text-align: center;
}
.formbold-form-title p {
    font-size: 16px;
    line-height: 24px;
    color: #9299a8;
    text-align: center;
    margin-bottom: 2px;
}
.formbold-form-input {
  text-align: center;
  width: 100%;
  padding: 14px 22px;
  border-radius: 6px;
  border: 1px solid #DDE3EC;
  background: #FAFAFA;
  font-weight: 500;
  font-size: 12px;
  color: #536387;
  outline: none;
  resize: none;
}
.formbold-form-input:focus {
  border-color: #1089FF;
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.formbold-btn {
    text-align: center;
    width: 100%;
    font-size: 20px;
    border-radius: 5px;
    padding: 10px 20px;
    border: none;
    font-weight: 500;
    background-color: #1089FF;
    color: white;
    cursor: pointer;
    margin-top: 15px;
}
.formbold-btn:hover {
  box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.05);
}

.bg-light {
    background: #f8f9fa !important;
}

</style>

<!-- 본문 css -->

<!-- 푸터 시작 -->
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 끝 -->

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" /><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
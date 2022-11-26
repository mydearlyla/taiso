<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>TAISO</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" type="image/x-icon" href="./images/logo.png">
<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="./css/animate.css">
<link rel="stylesheet" href="./css/owl.carousel.min.css">
<link rel="stylesheet" href="./css/owl.theme.default.min.css">
<link rel="stylesheet" href="./css/magnific-popup.css">
<link rel="stylesheet" href="./css/aos.css">
<link rel="stylesheet" href="./css/ionicons.min.css">
<link rel="stylesheet" href="./css/bootstrap-datepicker.css">
<link rel="stylesheet" href="./css/jquery.timepicker.css">
<link rel="stylesheet" href="./css/flaticon.css">
<link rel="stylesheet" href="./css/icomoon.css">
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./css/board.css">
<link rel="stylesheet" href="./css/admin_my.css">

<script type="text/javascript">
function Login() {
// 	var mem_id = ${sessionScope.mem_id }
// 	if(mem_id==null) {
	alert("수정제안");
// 	location.href="./MemberLogin.me";
// 	return;
	}
}
</script>

<!-- input에 오늘날짜 기본값으로 넣기 -->
<script type="text/javascript">
	window.onload = function() {
		today = new Date();
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		console.log("today >>>> " + today);
		bir = document.getElementById("todaybirthday");
		bir.value = today;
	}
</script>
<style>
    #wrapper{
        width:300px;
        margin:auto;
        padding: 30px;
    }
</style>
</head>
<body>
	<div id="wrap">
		<!-- 헤더들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더들어가는 곳 -->

		<!--  -->  
		<section class="hero-wrap hero-wrap-2 js-fullheight"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
					<div class="col-md-9 ftco-animate pb-5">
						<p class="breadcrumbs">
							<span class="mr-2"><a href="./ReservationMain.rez">Home <i
									class="ion-ios-arrow-forward"></i></a></span> <span>고객센터 <i
								class="ion-ios-arrow-forward"></i></span>
						</p>
						<h1 class="mb-3 bread">고객센터</h1>
					</div>
				</div>
			</div>
		</section>
		<!--  -->

   <!-- 전달된 정보 확인 -->
   
<%--    <%=request.getAttribute("boardListAll") %> --%>
<%--	${requestScope.QuestionList } --%>
	
		<!-- left -->
		<section class="ftco-section contact-section">
			<div class="container">
				<div class="row d-flex mb-5 contact-info">
				
				<!-- @@@@@@@@@@@@여기부터 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
					<jsp:include page="../inc/mysidebar.jsp" />
				<!-- @@@@@@@@@@@@여기까지 사이드바.jsp@@@@@@@@@@@@@@@@@@ -->
		
		<!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
					<div class="col-md-8 block-9 mb-md-5">
							<div class="board_wrap">
								<div class="board_title">
								   <strong>내가 쓴 문의</strong>
								 	<div align="right">
											<input type="submit" value="작성하기" class="btn btn-primary" onclick=" location.href='./QuestionWritePre.bo'; " >
									</div>

									<!--  검색 폼 -->
									<div class="n_search" border="1" width="90%">
									<p>나의 글 개수 : ${requestScope.cnt } 개</p>	
										<div align="right">
											<input type="text" name="search"> 
										</div>
									</div>
								</div>
		
						  <!-- 옵션정보 -->
						  <div class="tab-content" id="pills-tabContent">
						  
						  <!-- 이 안으로 내용 바뀜 -->
							    <div class="tab-pane fade show active" id="pills-1" role="tabpanel" aria-labelledby="pills-description-tab">
	
						<div class="board_list_wrap">
							<div class="board_list">
								<div class="top">
									<div class="num">번호</div>
									<div class="bo_cate">카테고리</div>
									<div class="title">제목</div>
									<div class="mem_id">작성자</div>
									<div class="date">작성일</div>
								</div>
									<c:forEach var="bodto" items="${QuestionList }">
										<div>
											<div class="num">${bodto.bo_num }</div>
											<div class="bo_cate">
										    <c:if test="${bodto.bo_cate eq '1'}">이용안내</c:if>
										    <c:if test="${bodto.bo_cate eq '2'}">예약/결제</c:if>
										    <c:if test="${bodto.bo_cate eq '3'}">취소/환불</c:if>
										    <c:if test="${bodto.bo_cate eq '4'}">보험/사고</c:if>
										    <c:if test="${bodto.bo_cate eq '5'}">기타</c:if>
											</div>
											
											
											<div class="title" id="titlepadding2">
											<c:if test="${bodto.bo_re_lev > 0}">
												<img src="./img/level.gif" width="${bodto.bo_re_lev * 10 }">
												<img src="./img/re.gif">
											</c:if>
											<a
												href="./QuestionDetail.bo?bo_num=${bodto.bo_num }&pageNum=${pageNum}">
												${bodto.bo_title } 
<%-- 													<c:if test="${bodto.bo_file == null }"> --%>
												
<%-- 													</c:if> --%>
<%-- 													<c:if test="${bodto.bo_file != "" }"> --%>
<!-- 														<img src="./img/save.png" width="15" height="15"> -->
<%-- 													</c:if> --%>
												<c:choose>
											    <c:when test="${empty bodto.bo_file}">
											        &nbsp;
											    </c:when>
											    <c:when test="${not empty bodto.bo_file}">
											        <img src="./img/save.png" width="13" height="13">
											    </c:when>
											    <c:otherwise>
											        ?
											    </c:otherwise>
											</c:choose>
											</a>
											</div>
												<div class="mem_id">${bodto.mem_nickName }</div>
												<div class="date">${bodto.bo_sysdate }</div>
										</div>
									</c:forEach>
									</div>
									</div>
								</div>
								<!-- 여기까지 1번 카테  -->
								

								<!-- 아에 tabcontent 끝 -->
							</div>

						   	<div class="n_page" align="center" id="wrapper"> 
						   		<c:if test="${requestScope.cnt != 0}">
					  
								    <!-- 이전 -->
								    <c:if test="${startPage > pageBlock }">
								    	<a href="./QuestionList.bo?pageNum=${startPage-pageBlock }" class="btn btn-outline-primary" ><<</a>
								    </c:if>
								    <!-- 페이지 번호(1,2,3....) -->	  
								    <c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
								          <a href="./QuestionList.bo?pageNum=${i }" class="btn btn-outline-primary" >${i }</a> 
								    </c:forEach>  
								    
								    <!-- 다음 -->	
								    <c:if test="${endPage < pageCount }">
								        <a href="./QuestionList.bo?pageNum=${startPage+pageBlock }" class="btn btn-outline-primary">>></a>
								    </c:if>
								</c:if>
						   	</div>
		 					  	<!-- 페이지처리 이전,다음 -->
		   	
		   	
						</div>								
		<!-- 이 안이 변동사항 아래는 외부 틀이라서 필수 -->			
			</div>
<!-- 				<div class="row justify-content-center"></div> -->
			</div>
			</div>
		</section>
		
		<!-- @@@@@@@@@@@@@@@@@우측@@@@@@@@@@@@@@@@ -->
	            
		   
		<div class="clear"></div>
		<!-- 푸터들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터들어가는 곳 -->
		
	</div>
	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
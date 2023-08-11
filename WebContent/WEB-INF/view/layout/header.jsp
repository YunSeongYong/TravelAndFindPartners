<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<style>
#dropdown-menu[data-bs-popper] {
	top: 100%;
	left: -50px;
	margin-top: var(- -bs-dropdown-spacer);
}

header {
       position: fixed;
       top: 0;
       left: 0;
       width: 100%;
       background-color: white; /* Set your desired background color */
       z-index: 1000; /* Set a high z-index to keep the header on top of other elements */
   }
 body {
        padding-top: 70px; /* 헤더의 높이에 따라 값을 조정하세요 */
    }   
    
</style>

<html lang="en">
<head>
<title>Blog</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- <link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet"> -->
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
<script src="https://kit.fontawesome.com/d0a7af3fd0.js" crossorigin="anonymous"></script>

</head>
<body>
<header>
	<!-- 네브바 시작 -->
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="http://localhost:8080/TravelAndFindPartners/home">트립소다</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
				aria-controls="navbarNavDropdown" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown"
				style="justify-content: flex-end;">
					<ul class="navbar-nav">
		                <!-- 프로필 이미지와 드롭다운 메뉴를 추가합니다 -->
		                <li class="nav-item dropdown">
		                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		                        <!-- 여기에 프로필 이미지를 추가합니다 -->
		                        <img src="path_to_profile_image.jpg" alt="프로필 이미지">
		                    </a>
		                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		                        <!-- 마이페이지와 로그아웃 링크를 추가합니다 -->
		                        <li><a class="dropdown-item" href="#">마이페이지</a></li>
		                        <li><a class="dropdown-item" href="#">로그아웃</a></li>
		                    </ul>
		                </li>
	                <li class="nav-item" id="loginLink">
	                    <a class="nav-link" href="login/loginform.jsp">로그인</a>
	                </li>
	                <li class="nav-item" id="signupLink">
	                    <a class="nav-link" href="sign/signUp.jsp">회원가입</a>
	                </li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> 작성하기 </a>
						<ul id="dropdown-menu" class="dropdown-menu">
							<li><a class="dropdown-item" href="write">동행 모집하기</a></li>
							<li><a class="dropdown-item" data-bs-toggle="modal"
								data-bs-target="#scheduleModal">여행일정 만들기</a></li>
						</ul></li>		
				</ul>
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="companion">동행</a></li>
					<li class="nav-item"><a class="nav-link" href="hello">일정</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	
	
	
	
	<br>

	<!-- 여행일정 만들기 모달 -->
	<div class="modal fade" id="scheduleModal" tabindex="-1"
		aria-labelledby="scheduleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="scheduleModalLabel">여행일정 만들기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="/TravelAndFindPartners/schedule3" method="POST">
						<div class="mb-3">
							<label for="destination" class="form-label" id="destination">여행지</label> <select
								class="form-select" id="destination" name="destination">
								<option selected>여행지를 선택해주세요</option>
								<option value="서울">서울특별시</option>
								<option value="부산">부산광역시</option>
								<option value="인천">인천광역시</option>
								<option value="대구">대구광역시</option>
								<option value="광주">광주광역시</option>
								<option value="대전">대전광역시</option>
								<option value="울산">울산광역시</option>
								<option value="세종">세종특별자치시</option>
								<option value="경기">경기도</option>
								<option value="강원">강원도</option>
								<option value="충북">충청북도</option>
								<option value="충남">충청남도</option>
								<option value="전북">전라북도</option>
								<option value="전남">전라남도</option>
								<option value="경북">경상북도</option>
								<option value="경남">경상남도</option>
								<option value="제주">제주특별자치도</option>
							</select>
						</div>
						<div class="mb-3">
							<label for="startDate" class="form-label">여행 시작 날짜</label> <input
								type="date" class="form-control" id="startDate" name="startDate">
						</div>
						<div class="mb-3">
							<label for="endDate" class="form-label">여행 종료 날짜</label> <input
								type="date" class="form-control" id="endDate" name="endDate">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"data-bs-dismiss="modal">닫기</button>
						<input type="submit" class="btn btn-primary" value="다음">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 네브바 끝 -->
</header>
</body>
<script>
    // JavaScript로 로그인 상태를 체크하고 헤더를 동적으로 변경합니다.
    // 로그인 상태에 따라 표시할 링크들의 id를 조작하여 보여주거나 숨깁니다.
    // 이 예시는 단순한 가정으로 작성되었습니다.
    
    // 사용자가 로그인되어 있는 경우
    var isLoggedIn = true; // 로그인 상태 여부를 설정
    if (isLoggedIn) {
        document.getElementById("profileLink").style.display = "inline";
        document.getElementById("myPageLink").style.display = "inline";
        document.getElementById("logoutLink").style.display = "inline";
        document.getElementById("loginLink").style.display = "none";
        document.getElementById("signupLink").style.display = "none";
    } else { // 로그인되어 있지 않은 경우
        document.getElementById("profileLink").style.display = "none";
        document.getElementById("myPageLink").style.display = "none";
        document.getElementById("logoutLink").style.display = "none";
        document.getElementById("loginLink").style.display = "inline";
        document.getElementById("signupLink").style.display = "inline";
    }
</script>




    <!-- Set destination, startDate, endDate in the request -->
    <%
        String destination = request.getParameter("destination");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        request.setAttribute("destination", destination);
        request.setAttribute("startDate", startDate);
        request.setAttribute("endDate", endDate);
    %>
</html>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
   
</head>
<style>

   .delContainer {
        border: 1px solid black;
        width: 600px;
        height: 300px;
        background-color: #F1F4C7;
        display: flex;
        flex-direction: column;
        position: relative;
    }

    .delContent {
        width: 90%;
        height: 70%;
    }

    .now-pw, .edit-pw, .edit-pw-check {
        display: flex;
        justify-content: space-around;
        margin-bottom: 10px;
        width: 70%;
        height: 20%;
        position: relative;
    }
    
    .editPw, .checkPw {
    	border: none;
    	text-align: center;
    }
    
    .now-pw-title, .edit-pw-title, .edit-pw-check-title {
        background-color: #ffffff;
        width: 200px;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 100%;
        left: 10%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .now-pw-real, .edit-pw-input, .edit-pw-check-input {
        background-color: #ffffff;
        width: 300px;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 100%;
        left: 70%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .edit-pw-btn {
        width: 80%;
        height: 30px;
        position: absolute;
        top: 80%;
        left: 10%;
        background-color: #d9d9d9;
        border: 0;
    }
    
    
    
    <%@include file="/WEB-INF/views/inc/asset.jsp"%>
    
    
      
</style>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <!-- 사이드바  -->
        <%@include file="/WEB-INF/views/inc/mypage-sidebar.jsp"%>
        <!-- 사이드바 끝  -->
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            
            <!-- Navbar Start -->
            <!-- 상당 메뉴 -->
            <%@include file="/WEB-INF/views/inc/header.jsp"%>
            <!-- 상당 메뉴 끝-->
            <!-- Navbar End -->
        <!-- Content End -->
        <!-- fakecontent 안에서 작성 -->

			<div class="myPage">
				<form action="/account/user/member/edit-pw.do">
					<div class="delContainer">
						<div class="delContent">
							<div class="now-pw">
								<div class="now-pw-title">현재 비밀번호</div>
								<div class="now-pw-real">
									<input type="text" class="editPw" name="nowPw">
								</div>
							</div>
							<div class="edit-pw">
								<div class="edit-pw-title">수정 비밀번호</div>
								<div class="edit-pw-input">
									<input type="text" class="editPw" name="editPw">
								</div>
							</div>
							<div class="edit-pw-check">
								<div class="edit-pw-check-title">수정 비밀번호 확인</div>
								<div class="check-pw-input">
									<input type="text" class="checkPw" name="checkPw">
								</div>
							</div>
						</div>
						<button type="submit" class="edit-pw-btn">수정 완료</button>
					</div>
				</form>
			</div>

			<!-- fakecontent 끝 -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        
    </div>
    </div>

    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    <script>

    document.addEventListener('DOMContentLoaded', function() {
    const sidebarToggler = document.getElementById('sidebar-toggler');
    const sidebar = document.querySelector('.sidebar');
    const content = document.querySelector('.content');

        sidebarToggler.addEventListener('click', function() {
        sidebar.classList.toggle('hidden');
        content.classList.toggle('expanded');
        });
    });
    
    

    </script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>BudgetBuddy | 개인정보 관리</title>
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
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
   
</head>
<style>

	
/*    .delContainer {
        width: 600px;
        height: 300px;
        background-color: #F3f6f9;
        border-radius: 5px;
        display: flex;
        flex-direction: column;
        position: relative;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1); 
    } */


    .editPw, .checkPw {
    	border: none;
    	text-align: center;
    }
    
    .now-pw-title, .edit-pw-title, .edit-pw-check-title {
        background-color: #e8e8e8 !important; 
        text-align: left;
  		font-weight: bold;
  		box-shadow: inset 0 0 5px rgba(0,0,0,0.1); 
  		margin-right: 10px; 
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

    .now-pw-real, .edit-pw-input, .check-pw-input {
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
		<div class="content-total-style">
			<div class="content-header">
					<div class="content-title-style">
						<h3>비밀번호 수정</h3>
					</div>
				</div>
			<div class="mypage-box-container-style">
				<form action="/account/user/member/edit-pw.do" method="POST">
					<div class="user-info-container-style info-box-short-height">
							<div class="user-info-input-row-style">
								<div class="form-group"><label>현재 비밀번호</label><input type="text" class="input-style-form" name="nowPw"></div>
							</div>
							<div class="user-info-input-row-style">
								<div class="form-group"><label>새 비밀번호</label><input type="text" class="input-style-form" name="editPw"></div>
							</div>
							<div class="user-info-input-row-style">
								<div class="form-group"><label>새 비밀번호(확인)</label><input type="text" class="input-style-form" name="checkPw"></div>
						</div>
						<button type="submit" class="button purple-btn info-submit-long-btn" onclick="window.location.reload();">수정 완료</button>
					</div>
					</form>
				</div>
			</div>
		</div>
			<!-- fakecontent 끝 -->
    </div>

    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    
</body>

</html>
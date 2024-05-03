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

    <!-- Libraries Stylesheet -->
</head>
<style>

   #fakecontent{
		display: flex;
		justify-content: center;
		align-content: center;
	}
	
	.user-profile {
  border: 1px solid black;
  margin-left: 0 !important;
  width: 600px;
  height: 300px;
  display: flex;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  margin-bottom: 20px;
  position: relative;
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
        <div id="fakecontent">
        <div id="infoeditcontent" >
        	
        </div>
        
        
        
        
        
        
        
        	<div class="myPage">
        <div class="user-profile">
            <div class="user-profile-img-container">
                <button type="submit" class="material-symbols-outlined" id="editImgIcon">
                    edit
                </button>
                <div class="user-profile-img">
                    <span>개인 프로필 이미지</span>
                </div>
            </div>
            <form class="user-profile-container">
                <div class="user-profile-name">
                    <div class="user-profile-name-title">이름</div>
                    <div class="user-profile-name-edit">
                        <input type="text" class="user-profile-name-real"></input>
                    </div>
                </div>
                <div class="user-profile-nickname">
                    <div class="user-profile-nickname-title">닉네임</div>
                    <div class="user-profile-nickname-edit">
                        <input type="text" class="user-profile-nickname-real"></input>
                        <button type="submit" class="user-profile-nickname-duplicate">중복확인</button>
                    </div>
                </div>
                <div class="user-profile-sex">
                    <div class="user-profile-sex-title">성별</div>
                    <div class="user-profile-sex-edit">
                        <input type="radio" id="user-profile-sex-male" name="gender" class="user-profile-sex-choice">
                        <label for="male">남자</label><br>
                        <input type="radio" id="user-profile-sex-female" name="gender" class="user-profile-sex-choice">
                        <label for="female">여자</label><br>
                    </div>
                </div>
                <div class="user-profile-phone">
                    <div class="user-profile-phone-title">전화번호</div>
                    <div class="user-profile-phone-edit">
                        <input type="text" class="user-profile-phone-real"></input>
                        <button type="submit" class="user-profile-phone-duplicate">중복확인</button>
                    </div>
                </div>
                <div class="userSaveBtn">
                    <button type="submit">저장하기</button>
                </div>
            </form>
        </div>
    </div>

        <!-- fakecontent 끝 -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        
    </div>
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

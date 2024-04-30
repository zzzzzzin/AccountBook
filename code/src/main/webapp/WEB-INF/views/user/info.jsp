<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>DASHMIN - Bootstrap Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
</head>
<style>

   
    
    <%@include file="/WEB-INF/views/inc/asset.jsp"%>
    .myPage {
        border: 1px solid black;
        width: 500px;
        height: 500px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .user-profile {
        border: 1px solid black;
        width: 400px;
        height: 400px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .user-profile-img {
        border: 1px solid black;
        width: 100px;
        height: 100px;
        border-radius: 50%;
        background-color: #ffffff;      
        margin-bottom: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .user-profile-container {
        border: 1px solid black;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 300px;
        height: 300px;
    }

    .user-profile-name, .user-profile-nickname, .user-profile-sex, .user-profile-phone, .user-profile-SSN {
        width: 300px;
        border: 1px solid black;
        display: flex;
        justify-content: space-evenly;
        width: 300px;
        height: 30px;
        margin-bottom: 5px;
        
    }

    .user-profile-name-title, .user-profile-nickname-title, 
    .user-profile-sex-title, .user-profile-phone-title, .user-profile-SSN-title {
        width: 100px;
    }

    .user-profile-name-real, .user-profile-nickname-real, .user-profile-sex-real, .user-profile-phone-real, .user-profile-SSN-real {
        border: 1px solid black;
        background-color: #d9d9d9;
        width: 150px;
        text-align: center;
    }

    .myPage-btns {
        border: 1px solid black;
        width: 500px;
        display: flex;
        justify-content: space-evenly;
        margin-top: 10px;
    }
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
      

        <!-- fakecontent 끝 -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        

           <div class="myPage">
        <div class="user-profile">
            <div class="user-profile-img">
                개인 프로필 이미지
            </div>
            <div class="user-profile-container">
                <div class="user-profile-name">
                    <div class="user-profile-name-title">이름</div>
                    <div class="user-profile-name-real">홍길동</div>
                </div>
                <div class="user-profile-nickname">
                    <div class="user-profile-nickname-title">닉네임</div>
                    <div class="user-profile-nickname-real">hong</div>
                </div>
                <div class="user-profile-sex">
                    <div class="user-profile-sex-title">성별</div>
                    <div class="user-profile-sex-real">남</div>
                </div>
                <div class="user-profile-phone">
                    <div class="user-profile-phone-title">전화번호</div>
                    <div class="user-profile-phone-real">010-1234-5678</div>
                </div>
                <div class="user-profile-SSN">
                    <div class="user-profile-SSN-title">주민등록번호</div>
                    <div class="user-profile-SSN-real">123456-1234567</div>
                </div>
            </div>
        </div>
        <div class="myPage-btns">
            <div>
                <button type="button">비밀번호 수정</button>
            </div>
            <div>
                <button type="button">개인정보 수정</button>
            </div>
            <div>
                <button type="button">회원 탈퇴</button>
            </div>
        </div>
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

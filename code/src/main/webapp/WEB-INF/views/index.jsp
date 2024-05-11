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
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
</head>
<style>

/*     body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    
    header {
        background-color: #333;
        padding: 20px;
    }
    
    main {
        display: flex;
        justify-content: space-around;
        padding: 20px;
    }
    
    h3 {
        color: #333;
    }
    
    p {
        color: #666;
    }
    */
    
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
        <%@include file="/WEB-INF/views/inc/sidebar.jsp"%>
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
        <div class="index-page">

    <div class="index-page-item-area main-box-container-style">
    <div>
    	<section>
            <h2> 소비 패턴 분석을 통한 지출 관리 친구 <span>"BudgetBuddy"</span></h2>
    	</section>
    </div>
    <div class="index-page-box-area">
        <section class="box">
            <h4><a href="/account/board/view.do">게시판</a></h4>
            <p>게시판에 대한 설명을 여기에 추가하세요.</p>
        </section>

        <section class="box">
            <h4><a href="/account/account/calendar.do">대시보드</a></h4>
            <p>대시보드에 대한 설명을 여기에 추가하세요.</p>
        </section>

        <section class="box">
            <h4><a href="/account/card/recommendation.do">카드추천</a></h4>
            <p>카드추천에 대한 설명을 여기에 추가하세요.</p>
        </section>
    </div>
    </div>
    	<div class="index-page-item-area">
        	<img src="/account/asset/images/BudgetBuddy.jpg" alt="이미지">
        </div>

    <script src="script.js"></script>

        <!-- fakecontent 끝 -->
        </div>
        </div>
    </div>
    </div>

    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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

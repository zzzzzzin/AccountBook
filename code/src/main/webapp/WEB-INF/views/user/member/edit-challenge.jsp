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

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>

   .container-surveysetting {
        /* border: 1px solid black; */
        width: 800px;
        height: 300px;
        background-color: #F1F4C7;
        display: flex;
        flex-direction: column;
        position: relative;
    }

   

    .contents-surveysetting {
        display: flex;
        justify-content: space-around;
        margin-bottom: 10px;
        width: 70%;
        height: 20%;
        position: relative;
    }

    .sallary-title,
    .check-pw-title {
        background-color: #d9d9d9;
        width: 200px;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 70%;
        left: 10%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .sallary-real, .settingPeriod {
        background-color: #d9d9d9;
        width: 80%;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 70%;
        left: 70%;
        display: flex;
        justify-content: center;
        align-items: center;
        
    }

    .settingPeriod {
        display: flex;
		padding: 30px
    }
    
    .startDate {
    	margin-right: 10px;
    }

    .saveSurveySetting {
        display: flex;
        justify-content: center;
    }

    #start-date, #end-date {
        text-align: center;
    }

    .saveBtn {
        width: 20%;
        height: 30px;
        position: absolute;
        top: 85%;
        left: 74%;
        background-color: #d9d9d9;
        border: 2px solid black;
        border-radius: 10px;
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
        <form action="">
            <div class="container-surveysetting">
                <div class="content-surveysetting">
                    <div class="contents-surveysetting">
                        <div class="sallary-title">월급</div>
                        <input type="text" class="sallary-real" value="20,000,000원"></input>
                    </div>
                    <div class="contents-surveysetting">
                        <div class="sallary-title">저축 목표 금액</div>
                        <input type="text" class="sallary-real" value="10,000,000원"></input>
                    </div>
                    <div class="contents-surveysetting">
                        <div class="sallary-title">저축 목표 기간 설정</div>
                        <div class="settingPeriod">
                            <div class="startDate">
                                <label for="start-date">시작일</label>
                                <input type="text" id="start-date" name="start-date" value="2024/01/01">
                            </div>
                            <div class="endDate">
                                <label for="end-date">종료일</label>
                                <input type="text" id="end-date" name="end-date" value="2025/12/31">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="saveSurveySetting">
                    <button type="submit" class="saveBtn">저장하기</button>
                </div>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
    
    $(document).ready(function () {
        // jQuery datepicker 초기화
        $("#start-date, #end-date").datepicker({
            dateFormat: "yy-mm-dd"
        });

        // input 클릭 시 값 없애기
        $('input[type="text"]').on('focus', function() {
            $(this).val('');
        });
    });

    </script>
</body>

</html>

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

<link rel="stylesheet" href="/account/asset/css/combine.css">
</head>
<style>

   body {
        font-family: 'Noto Sans KR', sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
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

			<div class="container-myCardTotal">
				<div class="date-range-myCardTotal">
					<label for="start-date-myCardTotal">시작일:</label> <input type="text"
						id="start-date" class="date-input-myCardTotal"> <label
						for="end-date">종료일:</label> <input type="text" id="end-date"
						class="date-input-myCardTotal">
				</div>
				<div class="card-list-myCardTotal">
					<!-- 카드 아이템들이 동적으로 추가될 곳 -->
				</div>
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
    
    $(document).ready(function() {
        // 달력 초기화
        $(".date-input-myCardTotal").datepicker({
            dateFormat: "yy-mm-dd"
        });
    
        // 카드 데이터
        const cards = [
            { name: "카드이미지1", usage: "총 사용 금액1" },
            { name: "카드이미지2", usage: "총 사용 금액2" },
            { name: "카드이미지3", usage: "총 사용 금액3" },
            { name: "카드이미지4", usage: "총 사용 금액4" },
            { name: "카드이미지5", usage: "총 사용 금액5" }
        ];
    
        // 카드 아이템 생성 함수
        function createCardItem(card) {
            const cardItem = `
                <div class="card-item-myCardTotal">
                    <div class="card-image-myCardTotal"></div>
                    <div class="card-details-myCardTotal">
                        <div class="card-name-myCardTotal">${card.name}</div>
                        <div class="card-usage-myCardTotal">${card.usage}</div>
                    </div>
                </div>
            `;
            return cardItem;
        }
    
        // 카드 아이템들을 동적으로 추가
        cards.forEach(function(card) {
            const cardItem = createCardItem(card);
            $(".card-list-myCardTotal").append(cardItem);
        });
    });

    </script>
</body>

</html>

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

   body {
        font-family: 'Noto Sans KR', sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
    }
    
    #cardImgPlace {
    	margin: 0;
    	width: 150px;
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
        <%@include file="/WEB-INF/views/inc/account-sidebar.jsp"%>
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

		<form id="selectDateForm" method="GET">
			<div class="date-range-myCardTotal">
				<label for="start-date-myCardTotal">시작일 </label> 
					<input type="text" name = "startDate" id="start-date" class="date-input-myCardTotal" value="${map.startDate}"> 
				<label for="end-date">종료일 </label> 
					<input type="text" name = "endDate" id="end-date" class="date-input-myCardTotal" value="${map.endDate}">
				<input type="submit" value="확인"/>
			</div>
		</form>
		
		<div class="card-list-myCardTotal">
				<c:forEach items="${list}" var="dto">
						<button type="submit" class="card-item-myCardTotal" id="useCardDetail" onclick="location.href='/account/account/card-use-detail.do?seqMyCard=${dto.seqMyCard}&startDate=${map.startDate}&endDate=${map.endDate}';">
<!-- 							<div class="card-image-myCardTotal"></div> -->
							<img src="/account/asset/images/${dto.fileLink}" id="cardImgPlace" >
							<div class="card-details-myCardTotal">
								<div class="card-name-myCardTotal">
									<c:if test="${dto.alias != null}">
										${dto.alias}
									</c:if>
									<c:if test="${dto.alias == null}">
										${dto.cfName}
									</c:if>
								</div>
								<div class="card-usage-myCardTotal">${dto.totalPrice}</div>
							</div>
						</button>
					</c:forEach>
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
        $(".date-input-myCardTotal").datepicker({
            dateFormat: "yy-mm-dd"
        });
    });

        
//      // card-item-myCardTotal를 클릭하면 CardUseageInfo 함수 실행
//         $(document).on("click", ".card-item-myCardTotal", function() {
//             CardUseageInfo();
//         });
    
//     function CardUseageInfo() {
//     	window.location.href = '/account/account/card-use-detail.do';  	
//     }

    </script>
</body>

</html>

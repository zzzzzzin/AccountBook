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

		<div class="date-range-myCardTotal">
			<label for="start-date-myCardTotal">시작일:</label> 
			<input type="text" id="start-date" class="date-input-myCardTotal"> 
				<label for="end-date">종료일:</label> 
				<input type="text" id="end-date" class="date-input-myCardTotal">
				<button id="submit-dates">확인</button> <!-- 시작일과 종료일을 선택한 후 서블릿으로 전송하는 버튼 -->
		</div>
		<div class="card-list-myCardTotal">
			<c:forEach items="${list}" var="dto">
					<div class="card-item-myCardTotal">
						<div class="card-image-myCardTotal"></div>
						<div class="card-details-myCardTotal">
							<div class="card-name-myCardTotal">${dto.alias}</div>
							<div class="card-usage-myCardTotal">${dto.totalPrice}</div>
						</div>
						<input type="hidden" id="seqMyCard" name="seqMyCard" value="${dto.seqMyCard}">
					</div>
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

        // 확인 버튼 클릭 이벤트
        $("#submit-dates").click(function() {
            var startDate = $("#start-date").val(); // 시작일
            var endDate = $("#end-date").val(); // 종료일

            // Ajax를 사용하여 서블릿으로 데이터 전송
            $.ajax({
                url: "/account/account/card-use.do", // 서블릿 주소
                type: "GET",
                data: {
                    startDate: startDate,
                    endDate: endDate
                },
                success: function(response) {
                    console.log("서블릿으로부터 데이터를 성공적으로 받았습니다.");
                    // 받아온 데이터를 이용하여 카드 정보를 업데이트
                    updateCardList(response);
                },
                error: function(xhr, status, error) {
                    console.error("서블릿과의 통신 중 오류가 발생했습니다.");
                }
            });
        });

        
     // 카드 정보 업데이트 함수
        function updateCardList(data) {
            // 받아온 데이터를 이용하여 카드 정보를 업데이트
            $(".card-list-myCardTotal").empty(); // 이전 카드 정보를 비웁니다.
            
            $.each(data, function(index, dto) {
                var cardItem = `
                    <div class="card-item-myCardTotal">
                        <div class="card-image-myCardTotal"></div>
                        <div class="card-details-myCardTotal">
                            <div class="card-name-myCardTotal">\${dto.alias}</div>
                            <div class="card-usage-myCardTotal">\${dto.totalPrice}</div>
                        </div>
                        <input type="hidden" id="seqMyCard" name="seqMyCard" value="\${dto.seqMyCard}">
                    </div>
                `;
                
                $(".card-list-myCardTotal").append(cardItem); // 새로운 카드 정보를 추가합니다.
            });
        }

    
//         // 카드 아이템 생성 함수
//         function createCardItem(card) {
//             const cardItem = `
//                 <div class="card-item-myCardTotal">
//                     <div class="card-image-myCardTotal"></div>
//                     <div class="card-details-myCardTotal">
//                         <div class="card-name-myCardTotal">${card.name}</div>
//                         <div class="card-usage-myCardTotal">${card.usage}</div>
//                     </div>
//                 </div>
//             `;
//             return cardItem;
//         }
    
//         // 카드 아이템들을 동적으로 추가
//         cards.forEach(function(card) {
//             const cardItem = createCardItem(card);
//             $(".card-list-myCardTotal").append(cardItem);
//         });
        
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

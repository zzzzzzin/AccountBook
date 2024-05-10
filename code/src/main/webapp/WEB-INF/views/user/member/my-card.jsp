<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
</head>

<style>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</style>
<title>
나의 카드
</title>


<body>

	<div class="container-xxl position-relative bg-white d-flex p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
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
			<div class="fakecontent">
				<div class="myCards">
				<c:forEach items="${clist}" var="dto">
					<div class="myCard">
						<div class="myCardImg">
							<img src="/account/asset/images/${dto.fileLink}" alt="">
						</div>
						<div class="myCard-detail">
							<div class="myCardName">
								<div>카드명</div>
								<div>${dto.name}</div>
							</div>
							<div class="myCardCompany">
								<div>카드사</div>
								<div>${dto.cardCompany}</div>
							</div>
							<div class="myCardNickname">
								<div>별칭</div>
								<div>${dto.alias}</div>
							</div>
						</div>
						<div class="myCardBtn">
							<button class="material-symbols-outlined">expand_more</button>
						</div>
					</div>
					<div class="moreMyCard">
						<div class="myCardMoreNum">
							<div>카드 번호</div>
							<div>${dto.cardNumber}</div>
						</div>
						<div class="myCardMoreNoneNum">
							<div class="myCardMoreCompany">
								<div>카드사</div>
								<div>${dto.cardCompany}</div>
							</div>
							<div class="myCardMoreName">
								<div>카드명</div>
								<div>${dto.name}</div>
							</div>
							<div class="myCardMoreNickname">
								<div>별칭</div>
								<div>${dto.alias}</div>
							</div>
							<div class="myCardMorePeriod">
								<div>유효기간</div>
								<div>${dto.validity}</div>
							</div>
							<button type="submit" data-seq="${dto.seqMyCard}" class="gray-btn button submit-btn-style" id="delBtn">삭제</button>
						</div>
					</div>
					</c:forEach>
					
					<div class="addMyCard">
						<button type="submit"
							onclick="location.href='/account/user/member/add-my-card.do';">추가하기</button>
					</div>
				</div>
			</div>




			<!-- fakecontent 끝 -->
			<!-- Back to Top -->
			<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
				class="bi bi-arrow-up"></i></a>

		</div>
	</div>

	<!-- JavaScript Libraries -->

	<!-- Template Javascript -->
	<script
		src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
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
    
    document.addEventListener('DOMContentLoaded', function () {
        const expandButtons = document.querySelectorAll('.material-symbols-outlined');
        const moreCards = document.querySelectorAll('.moreMyCard');

        // 초기에는 모든 moreMyCard를 숨깁니다.
        moreCards.forEach(card => {
            card.style.display = 'none';
        });

        // 각각의 버튼에 대해 이벤트 리스너를 추가합니다.
        expandButtons.forEach((button, index) => {
            button.addEventListener('click', function () {
                if (moreCards[index].style.display === 'none') {
                    moreCards[index].style.display = 'block';
                    button.textContent = 'expand_less';
                } else {
                    moreCards[index].style.display = 'none';
                    button.textContent = 'expand_more';
                }
            });
        });
    });
    
    document.addEventListener('DOMContentLoaded', function() {
        // addMyCard 버튼을 클릭하면 다른 파일로 이동합니다.
        document.getElementById('addCardButton').addEventListener('click', function() {
            // 새로운 URL로 이동합니다.
            window.location.href = '새로운파일.jsp';
        });
    });
    
    document.addEventListener('DOMContentLoaded', function() {
        const delButtons = document.querySelectorAll('.delBtn');
        
        delButtons.forEach(button => {
            button.addEventListener('click', function() {
                const seq = button.dataset.seq;
                
                deleteCard(seq);
            });
        });
    });

    function deleteCard(seq) {
        $.ajax({
            type: "POST",
            url: "/account/user/member/my-card.do",
            data: { seq: seq },
            success: function(response) {
                console.log("카드 삭제 요청이 성공했습니다.");
                location.reload();
            },
            error: function(xhr, status, error) {
                console.error("카드 삭제 요청 중 오류가 발생했습니다.");
            }
        });
    }

    </script>
</body>

</html>
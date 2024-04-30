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

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="style.css">
</head>
<style>

   body {
        font-family: 'Noto Sans KR', sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f8f8f8;
    }
    
    .container {
        max-width: 800px;
        margin: 0 auto;
        padding: 40px;
        text-align: center;
    }
    
    h1 {
        color: #333;
        font-size: 32px;
        margin-bottom: 40px;
    }
    
    .blocks {
        display: flex;
        justify-content: space-around;
        margin-top: 50px;
    }
    
    .block {
        width: 250px;
        padding: 30px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease;
    }
    
    .block:hover {
        transform: translateY(-5px);
    }
    
    .block h2 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }
    
    .block p {
        color: #666;
        font-size: 18px;
        margin-bottom: 20px;
    }
    
    .add-button {
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    
    .add-button:hover {
        background-color: #45a049;
    }
    
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
    }
    
    .modal-content {
        background-color: #fff;
        margin: 15% auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
        width: 400px !important;
        text-align: center;
    }
    
    .modal-content h3 {
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }
    
    .modal-content input {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }
    
    .modal-buttons {
        display: flex;
        justify-content: space-between;
    }
    
    .modal-buttons button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    
    .modal-buttons button:hover {
        background-color: #45a049;
    }
    
    .modal-buttons .close-button {
        background-color: #ccc;
    }
    
    .modal-buttons .close-button:hover {
        background-color: #bbb;
    }
    .hover-message {
        display: none;
        color: #666;
        font-size: 14px;
        margin-top: 10px;
    }
    
    .block:hover .hover-message {
        display: block;
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

			<div class="container">
				<div class="blocks">
					<div class="block asset">
						<h2>자산</h2>
						<p id="assetValue"></p>
						<button class="add-button" data-modal="assetModal">
							<i class="material-icons">add_circle</i>
						</button>
						<p class="hover-message">드디어 일을 하고 왔구나</p>
					</div>
					<div class="block liability">
						<h2>부채</h2>
						<p id="liabilityValue"></p>
						<button class="add-button" data-modal="liabilityModal">
							<i class="material-icons">add_circle</i>
						</button>
						<p class="hover-message">그만 좀 써라</p>
					</div>
					<div class="block net-asset">
						<h2>순자산</h2>
						<p id="netAssetValue"></p>
					</div>
				</div>
			</div>
			<div id="assetModal" class="modal">
				<div class="modal-content">
					<h3>자산 입력</h3>
					<input type="number" id="assetInput" placeholder="자산 금액을 입력하세요">
					<div class="modal-buttons">
						<button id="addAssetButton">추가</button>
						<button class="close-button">취소</button>
					</div>
				</div>
			</div>

			<div id="liabilityModal" class="modal">
				<div class="modal-content">
					<h3>부채 입력</h3>
					<input type="number" id="liabilityInput" placeholder="부채 금액을 입력하세요">
					<div class="modal-buttons">
						<button id="addLiabilityButton">추가</button>
						<button class="close-button">취소</button>
					</div>
				</div>
			</div>

			<!-- fakecontent 끝 -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        
    </div>
    </div>

    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="script.js"></script>
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
    
    // 자산, 부채, 순자산 값을 저장할 변수
    let asset = 0;
    let liability = 0;
    let netAsset = 0;

    // 자산 추가 버튼 클릭 이벤트
    document.getElementById('addAssetButton').addEventListener('click', function() {
        const assetInput = document.getElementById('assetInput');
        const assetValue = parseFloat(assetInput.value);
        if (!isNaN(assetValue)) {
            asset += assetValue;
            updateValues();
            closeModal('assetModal');
            assetInput.value = '';
        }
    });

    // 부채 추가 버튼 클릭 이벤트
    document.getElementById('addLiabilityButton').addEventListener('click', function() {
        const liabilityInput = document.getElementById('liabilityInput');
        const liabilityValue = parseFloat(liabilityInput.value);
        if (!isNaN(liabilityValue)) {
            liability += liabilityValue;
            updateValues();
            closeModal('liabilityModal');
            liabilityInput.value = '';
        }
    });

    // 모달 창 열기 함수
    function openModal(modalId) {
        document.getElementById(modalId).style.display = 'block';
    }

    // 모달 창 닫기 함수
    function closeModal(modalId) {
        document.getElementById(modalId).style.display = 'none';
    }

    // 자산, 부채, 순자산 값 업데이트 함수
    function updateValues() {
        document.getElementById('assetValue').textContent = asset.toLocaleString();
        document.getElementById('liabilityValue').textContent = liability.toLocaleString();
        netAsset = asset - liability;
        document.getElementById('netAssetValue').textContent = netAsset.toLocaleString();
    }

    // 모달 창 열기 버튼 클릭 이벤트
    const addButtons = document.querySelectorAll('.add-button');
    addButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            const modalId = this.getAttribute('data-modal');
            openModal(modalId);
        });
    });

    // 모달 창 닫기 버튼 클릭 이벤트
    const closeButtons = document.querySelectorAll('.close-button');
    closeButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            const modalId = this.closest('.modal').id;
            closeModal(modalId);
        });
    });

    </script>
</body>

</html>

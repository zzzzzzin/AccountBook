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

<<<<<<< HEAD:code/src/main/webapp/WEB-INF/views/user/member/unregister.jsp
   .container-unregister {
        /* border: 1px solid black; */
        width: 600px;
        height: 300px;
        background-color: #F1F4C7;
        display: flex;
        flex-direction: column;
        position: relative;
    }

    .content-unregister {
        width: 90%;
        height: 70%;
    }

    .input-pw, .check-pw {
        display: flex;
        justify-content: space-around;
        margin-bottom: 10px;
        width: 70%;
        height: 20%;
        position: relative;
    }
    
    

    .input-pw-title, .check-pw-titles {
        background-color: #ffffff;
        width: 200px;
        height: 100%;
        text-align: center;
        position: absolute;
        top: 170%;
        left: 10%;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .input-pw-real, .check-pw-input {
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
    
    .input-pw-real > input, .check-pw-input > input {
    	border: none;
    }

    .unregister {
        display: flex;
        justify-content: center;
    }
    
    .unregister > div {
    	margin-right: 10px;
    }

    .check-pw-btn {
        width: 80%;
        height: 30px;
        position: absolute;
        top: 80%;
        left: 10%;
        background-color: #d9d9d9;
        border: 0;
    }
=======
   
>>>>>>> 396d83f65480a281a01234a1c7088dcfd0772efd:code/src/main/webapp/WEB-INF/views/account/card-use-detail.jsp
    
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

			<div class="card-image"></div>
			<div>
				<label for="start-date">시작일:</label> <input type="text"
					id="start-date" name="start-date"> <label for="end-date">종료일:</label>
				<input type="text" id="end-date" name="end-date">
				<button id="search-btn">검색</button>
			</div>
			<table class="transaction-table">
				<thead>
					<tr>
						<th>날짜</th>
						<th>금액</th>
						<th>카테고리</th>
						<th>결제처</th>
						<th>입금/지출</th>
					</tr>
				</thead>
				<tbody id="transaction-list"></tbody>
			</table>


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
        // jQuery datepicker 초기화
        $("#start-date, #end-date").datepicker({
            dateFormat: "yy-mm-dd"
        });

        // 검색 버튼 클릭 이벤트 처리
        $("#search-btn").click(function() {
            var startDate = $("#start-date").val();
            var endDate = $("#end-date").val();

            // 서버에서 데이터 가져오기 (AJAX 요청)
            $.ajax({
                url: "/get-transactions",
                method: "POST",
                data: {
                    startDate: startDate,
                    endDate: endDate
                },
                success: function(response) {
                    // 가져온 데이터를 날짜 순으로 정렬
                    var transactions = response.sort(function(a, b) {
                        return new Date(b.date) - new Date(a.date);
                    });

                    // 데이터를 테이블에 표시
                    var transactionList = $("#transaction-list");
                    transactionList.empty();

                    transactions.forEach(function(transaction) {
                        var row = "<tr>" +
                            "<td>" + transaction.date + "</td>" +
                            "<td>" + transaction.amount + "</td>" +
                            "<td>" + transaction.category + "</td>" +
                            "<td>" + transaction.payee + "</td>" +
                            "<td>" + (transaction.isIncome ? "입금" : "지출") + "</td>" +
                            "</tr>";
                        transactionList.append(row);
                    });
                },
                error: function() {
                    alert("데이터를 가져오는데 실패했습니다.");
                }
            });
        });
    });

    </script>
</body>

</html>

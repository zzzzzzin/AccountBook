<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
</style>
</head>

<div class="sidebar">

	<div class="buddy-budget-logo-style">
		<a href="/account/index.do"><span data-attr="Budget">Budget</span><span data-attr="Buddy">Buddy</span></a>
	</div>

	<nav class="navbar">
		<div class="navbar-nav w-100">
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i> 가계부</a>
				<div class="dropdown-menu bg-transparent border-0">
					<a href="/account/account/calendar.do" class="dropdown-item">달력</a> 
					<a href="/account/account/list.do" class="dropdown-item">목록</a> 
					<a href="/account/account/analysis.do" class="dropdown-item">분석</a>
				</div>
			</div>
			<a href="/account/account/card-use.do" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i> 카드 사용</a>
		</div>
	</nav>
</div>

<script>


// 	document.addEventListener("DOMContentLoaded", function() {
// 		var navLinks = document.querySelectorAll(".navbar .nav-link");

// 		navLinks.forEach(function(link) {
// 			link.addEventListener("click", function(event) {
// 				// 기본 동작 방지
// 				event.preventDefault();

// 				// 모든 링크에서 "active" 클래스 제거
// 				navLinks.forEach(function(link) {
// 					link.classList.remove("active");
// 				});

// 				// 클릭된 링크에 "active" 클래스 추가
// 				this.classList.add("active");
// 			});
// 		});
// 	});
</script>

</html>
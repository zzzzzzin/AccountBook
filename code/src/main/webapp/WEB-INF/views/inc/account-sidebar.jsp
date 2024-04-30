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
	<div class="logo">이미지</div>
	<nav>
		<ul>
			<li class="dropdown"><a href="/account/account/calendar.do"><i class="fas fa-home"></i>
					가계부</a>
				<ul class="submenu">
					<li><a href="/account/account/calendar.do">달력</a></li>
					<li><a href="#">목록</a></li>
					<li><a href="#">분석</a></li>
				</ul></li>
			<li><a href="#"><i class="fas fa-tachometer-alt"></i> 비용수익</a></li>
			<li class="dropdown"><a href="#"><i
					class="fas fa-shopping-cart"></i> 자산</a>
				<ul class="submenu">
					<li><a href="#">자산부채</a></li>
					<li><a href="#">자산변동</a></li>
				</ul></li>
			<li><a href="#"><i class="fas fa-user"></i> 카드사용</a>
		</ul>
	</nav>

</div>
<script>
		
</script>

</html>
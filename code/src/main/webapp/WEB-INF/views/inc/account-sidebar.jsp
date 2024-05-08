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
	            <div id="buddy-budget-logo"><a href="/account/index.do"><span data-attr="Budget">Budget</span><span data-attr="Buddy">Buddy</span></a></div>
	<nav>
		<ul>
			<li class="dropdown"><a href="/account/account/calendar.do"><i class="fas fa-home"></i>
					가계부</a>
				<ul class="submenu">
					<li><a href="/account/account/calendar.do">달력</a></li>
					<li><a href="/account/account/list.do">목록</a></li>
					<li><a href="/account/account/analysis.do">분석</a></li>
				</ul></li>
			<li><a href="/account/account/card-use.do"><i class="fas fa-user"></i> 카드 사용</a>
		</ul>
	</nav>

</div>
<script>
		
</script>

</html>
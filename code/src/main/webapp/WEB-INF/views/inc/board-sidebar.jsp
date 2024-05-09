<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">;
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style>
	#assignment_board {
	  position: static;
	  margin-right: 7px;
	  background-color: transparent;
	}
</style>
</head>

<div class="sidebar">
            <div class="buddy-budget-logo-style"><a href="/account/index.do"><span data-attr="Budget">Budget</span><span data-attr="Buddy">Buddy</span></a></div>

	<nav class="navbar">
		<div class="navbar-nav w-100">
			<a href="/account/board/view.do" class="nav-item nav-link"><i class="fas fa-home"></i> 게시판 홈</a>
			<div class="nav-item dropdown">
				<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i> 게시판 카테고리</a>
				<div class="dropdown-menu bg-transparent border-0">
					<a href="/account/board/noticeBoard.do" class="dropdown-item"> <span class="material-symbols-outlined" id="assignment_board">assignment</span> 공지게시판</a> 
					<a href="/account/board/freeBoard.do" class="dropdown-item"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 자유게시판</a> 
					<a href="//account/board/attendanceBoard.do" class="dropdown-item"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 출석게시판</a>
					<a href="/account/board/reportBoard.do" class="dropdown-item"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 건의게시판</a>
				</div>
			</div>
		</div>
	</nav>

</div>
<script>
		
</script>

</html>


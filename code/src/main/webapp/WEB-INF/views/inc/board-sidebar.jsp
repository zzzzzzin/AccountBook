<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <%@include file="/WEB-INF/views/inc/asset.jsp"%> --%>
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
            <div class="logo">이미지</div>
            <nav>
              <ul>
                <li><a href="/account/board/view.do"><i class="fas fa-home"></i> 게시판 홈</a></li>
                <li><a href="/account/board/noticeBoard.do"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 공지게시판</a></li>
                <li><a href="/account/board/freeBoard.do"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 자유게시판</a></li>
                <li><a href="/account/board/reportBoard.do"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 건의게시판</a></li>
                <li><a href="/account/board/attendanceBoard.do"><span class="material-symbols-outlined" id="assignment_board">assignment</span> 출석게시판</a></li>
              </ul>
            </nav>
          </div>
<script>
		
</script>

</html>


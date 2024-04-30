<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.material-symbols-outlined{
		margin-right: 10px;
	}
</style>
</head>

<div class="sidebar">
            <div class="logo">이미지</div>
            <nav>
              <ul>
                <li><a href="/account/board/view.do"><span class="material-symbols-outlined">home</span> 게시판 홈</a></li>
                <li><a href="/account/board/noticeBoard.do"><span class="material-symbols-outlined">assignment</span> 공지게시판</a></li>
                <li><a href="/account/board/freeBoard.do"><span class="material-symbols-outlined">assignment</span> 자유게시판</a></li>
                <li><a href="/account/board/reportBoard.do"><span class="material-symbols-outlined">assignment</span> 건의게시판</a></li>
                <li><a href="/account/board/attendanceBoard.do"><span class="material-symbols-outlined">assignment</span> 출석게시판</a></li>
              </ul>
            </nav>
          </div>
<script>
		
</script>

</html>


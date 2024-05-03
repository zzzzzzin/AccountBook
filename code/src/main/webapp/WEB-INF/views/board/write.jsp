<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>자유게시판</title>
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
        <%@include file="/WEB-INF/views/inc/board-sidebar.jsp"%>
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
		   <h2>글쓰기</h2>
		   <form method="POST" action="/account/board/write.do" enctype="multipart/form-data">
		     <div class="form-group">
		       <label for="category">게시판 카테고리</label>
		       <select id="category" name="category">
		         <option value="notice">공지사항</option>
		         <option value="report">신고 게시판</option>
		         <option value="free">자유 게시판</option>
		         <option value="suggestion">건의 사항 게시판</option>
		         <option value="attendance">출석 게시판</option>
		       </select>
		     </div>
		     <div class="form-group">
		       <label for="title">제목을 입력해 주세요.</label>
		       <input type="text" id="title" name="title" placeholder="제목을 입력해 주세요.">
		     </div>
		     <div class="form-group">
		       <label for="content">내용을 입력해 주세요.</label>
		       <textarea id="content" name="content" placeholder="내용을 입력해 주세요."></textarea>
		     </div>
		     <div class="file-attach">
		       <label for="file-input">파일 첨부<i class="material-icons">attach_file</i></label>
		       <input type="file" id="file-input" style="display:none;">
		     </div>
		     <div class="button-group">
		       <button type="submit">등록</button>
		       <button type="button">취소</button>
		     </div>
		   </form>
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

    </script>
</body>

</html>


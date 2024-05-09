<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>글 수정</title>
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
  <%@include file="/WEB-INF/views/inc/asset.jsp"%>
</head>

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
    <%@include file="/WEB-INF/views/inc/board-sidebar.jsp"%>
    <!-- Sidebar End -->

    <!-- Content Start -->
    <div class="content">
      <!-- Navbar Start -->
      <%@include file="/WEB-INF/views/inc/header.jsp"%>
      <!-- Navbar End -->

      <!-- Content Start -->
      <div class="container">
        <h2>글 수정</h2>
        <form method="POST" action="/account/board/edit.do">
          <input type="hidden" name="seq" value="${post.seq}">
          <div class="form-group">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" value="${post.title}" required>
          </div>
          <div class="form-group">
            <label for="content">내용</label>
            <textarea id="content" name="content" required>${post.content}</textarea>
          </div>
          <div class="button-group">
            <button type="submit">수정</button>
            <button type="button" onclick="history.back();">취소</button>
          </div>
        </form>
      </div>
      <!-- Content End -->

      <!-- Back to Top -->
      <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>    
    </div>
    <!-- Content End -->
  </div>

  <!-- JavaScript Libraries -->
  <!-- Template Javascript -->
  <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
</body>
</html>
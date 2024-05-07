<%@page import="com.project.accountbook.board.repository.BoardDAO"%>
<%@page import="com.project.accountbook.board.post.model.AttendanceDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

/* 	BoardDAO dao = new BoardDAO();
	List<AttendanceDTO> attendanceList = dao.selectAll();
	pageContext.setAttribute("attendanceList", attendanceList); */

%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>출석게시판</title>
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
       <%@include file="/WEB-INF/views/inc/board-sidebar.jsp"%><!-- 지우면 게시판 목록 보임 -->
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
        <section class="noticeboard">
        <div class="page-title">
        	<div class="container">
            	<h3>출석 게시판</h3>
            </div>
        </div>
      
	    <!-- board seach area -->
	    <div id="board-search">
	      <div class="container">
	        <div class="search-window">
	          <form action="">
	            <div class="search-wrap">
	              <select>
	                <option>제목+내용</option>
	                <option>제목</option>
	                <option>내용</option>
	              </select>
	              <label for="search" class="blind">게시판 검색</label>
	              <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
	              <button type="submit" class="btn btn-dark">검색</button>
	            </div>
	          </form>
	        </div>
	      </div>
	    </div>
	    
	    <!-- board list area -->
	    <div id="board-list">
	        <div class="container">
	            <table class="board-table">
	                <thead>
	                <tr>
	                    <th scope="col" class="th-num">번호</th>
	                    <th scope="col" class="th-title">제목</th>
	                    <th scope="col" class="th-writer">작성자</th>
	                    <th scope="col" class="th-date">등록일</th>
	                    <th scope="col" class="th-view">조회수</th>
	                    <th scope="col" class="th-like">추천</th>
	                </tr>
	                </thead>
	                <tbody>
	                <c:if test="${attendanceList.size() == 0}">
					    <tr>
					        <td colspan="6">게시물이 없습니다.</td>
					    </tr>
					</c:if>

						<c:forEach var="attendance" items="${attendanceList}">
							<tr>
								<td>${attendance.seq}</td>
								<td><c:choose>
										<c:when test="${attendance.blindCheck eq '1'}">
				                    관리자에 의해 블라인드 처리 되었습니다.
				                </c:when>
										<c:otherwise>
											<a href="/account/board/discussion.do?seq=${attendance.seq}">${attendance.title}</a>
										</c:otherwise>
									</c:choose></td>
								<td>${attendance.me_nickName != null ? attendance.me_nickName : attendance.ad_nickName}</td>
								<td>${attendance.writeDate}</td>
								<td>${attendance.viewCount}</td>
								<td>${attendance.likeCount}</td>
								<%-- <td id="secret"><c:choose>
										<c:when test="${attendance.secretCheck eq '1'}">
											<div class="fas fa-lock lock-icon"></div>
										</c:when>
										<c:otherwise>
											<div class="fas fa-unlock unlock-icon"></div>
										</c:otherwise>
									</c:choose></td> --%>
	
							</tr>
						</c:forEach>
					</tbody>
	            </table>
	            <div class="write-btn">
	                <a href="/account/board/write.do" class="btn btn-dark">글작성</a>
	            </div>
	        </div>
	    </div>
		</section>
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

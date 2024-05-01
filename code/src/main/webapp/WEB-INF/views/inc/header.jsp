<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	#navheader {
    background-color: #f3f6f9;
    padding: 20px;
  }

  #navheader nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  #navheader .logo {
    width: 100px;
    height: 50px;
    background-color: #ddd;
    margin-right: 20px;
  }

  #navheader nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: flex;
    width: 100%;
    justify-content: center;
  }

  #navheader nav li {
    margin: 0 20px;
  }

  .content1 {
    margin-left: 100px;
  }
  .content2 {
    margin-left: 300px;
  }
  .content3 {
    margin-left: 300px;
  }
  .content4 {
    margin-left: 300px;
  }
  .content5 {
    margin-left: 300px;
    background-color: red;
  }

  #navheader nav a {
    color: #333;
    text-decoration: none;
    font-weight: bold;
  }

  #navheader nav a:hover {
    color: #000;
  }
</style>
</head>

<header id="navheader">
	<nav>
	<!-- <a href="#" class="sidebar-toggler flex-shrink-0" id="sidebar-toggler" onclick="toggleSidebar()">
                        <i class="fa fa-bars"></i>
                    </a> -->
          <a href="/account/index.do"><div class="logo"></div></a>
          <ul>
            <li class="content1"><a href="/account/board/view.do">게시판</a></li>
            <li class="content2"><a href="/account/account/calendar.do">대시보드</a></li>
            <li class="content3"><a href="/account/card/recommendation.do">카드추천</a></li>
            <li class="content4"><a href="/account/user/member/info.do">마이페이지</a></li>
            <li class="content5"><a href="/account/user/login.do">로그인</a></li>
            
            <!-- 
            <li class="content1"><a href="#">게시판</a></li>
            <li class="content2"><a href="#">대시보드</a></li>
            <li class="content3"><a href="#">카드추천</a></li>
            <li class="content4"><a href="#">로그아웃</a></li> 
            -->
            
          </ul>
	</nav>
</header>
<script>
		
</script>

</html>


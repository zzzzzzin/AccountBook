<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	header {
        background-color: #f1f1f1;
        padding: 20px;
      }
      
      nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      
      .logo {
        width: 100px;
        height: 50px;
        background-color: #ddd;
        margin-right: 20px;
      }
      
      nav ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        width: 100%;
        justify-content: center;
      }
      
      nav li {
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
        background-color: red;
      }
      
      nav a {
        color: #333;
        text-decoration: none;
        font-weight: bold;
      }
      
      nav a:hover {
        color: #000;
      }
</style>
</head>

<header>
	<nav>
          <a href="/account/index.do"><div class="logo"></div></a>
          <ul>
            <li class="content1"><a href="#">게시판</a></li>
            <li class="content2"><a href="#">대시보드</a></li>
            <li class="content3"><a href="#">카드추천</a></li>
            <li class="content3"><a href="#">마이페이지</a></li>
            <li class="content4"><a href="/account/user/login.do">로그인</a></li>
            
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


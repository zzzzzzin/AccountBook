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
    border-bottom-right-radius: 13px;
    border-bottom-left-radius: 13px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1);
    margin-bottom:10px;
	display: flex;
	justify-content: center; /* 가운데 정렬을 위해 추가 */
    align-items: center; /* 세로 가운데 정렬을 위해 추가 */
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
    border:none;
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
    border:none;
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
  }

  #navheader nav a {
    color: #333;
    text-decoration: none;
    font-weight: bold;
  }

  #navheader nav a:hover {
    color: #000;
  }
  
  #logo {
  	width: 70px;
  }
</style>
</head>

<header id="navheader">
	<nav>
	<!-- <a href="#" class="sidebar-toggler flex-shrink-0" id="sidebar-toggler" onclick="toggleSidebar()">
                        <i class="fa fa-bars"></i>
                    </a> -->
          <a href="/account/index.do"><div class="logo"><img id="logo" alt="" src="/account/asset/images/logo.jpg"></div></a>
          <ul>
            <li class="content1"><a href="/account/board/view.do">게시판</a></li>
            <li class="content2"><a href="/account/account/calendar.do">대시보드</a></li>
            <li class="content3"><a href="/account/card/recommendation.do">카드추천</a></li>
            <li class="content4"><a href="/account/user/member/info.do">마이페이지</a></li>

			<c:if test="${empty id}">
				<li class="content5"><a href="/account/user/login.do">로그인</a></li>
			</c:if>

			<c:if test="${not empty id}">
				<li class="content5"><a href="/account/user/logout.do">로그아웃</a></li>
			</c:if>

		</ul>
	</nav>
</header>
<script>

	// 현재 URL
	var currentUrl = window.location.pathname;
	
	if (currentUrl.endsWith("login.do") || currentUrl.endsWith("/register.do") || currentUrl.endsWith("find-id.do") || currentUrl.endsWith("find-pw.do") || currentUrl.endsWith("reset-pw.do")) {
		// 나머지 메뉴 요소를 숨김 처리
		document.querySelectorAll("nav ul li").forEach(function(item) {
			item.style.display = "none";
		});
		
		// 로고를 가운데 정렬
	    document.querySelector(".logo").style.marginRight = "auto";
	    document.querySelector(".logo").style.marginLeft = "auto";
	}
</script>

</html>


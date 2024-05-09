<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
@import url('https://fonts.googleapis.com/css?family=Rubik:700&display=swap');


/* * { */
/*   box-sizing: border-box; */
/*   &::before, &::after { */
/*     box-sizing: border-box; */
/*   } */
/* } */

/* body { */
/*   font-family: 'Rubik', sans-serif; */
/*   font-size: 1rem; */
/*   line-height: 1.5; */
/*   display: flex; */
/*   align-items: center; */
/*   justify-content: center; */
/*   margin: 0; */
/*   min-height: 100vh; */
/*   background: #fff; */
/* } */

.header-content {
  position: relative;
  display: inline-block;
  cursor: pointer;
  outline: none;
  border: 0;
  vertical-align: middle;
  text-decoration: none;
  font-size: inherit;
  font-family: inherit;
  background-color: rgb(0 0 0 / 0%);
  
  &.learn-more {
    font-weight: 600;
    color: #382b22;
    text-transform: uppercase;
    padding: 1.25em 2em;
    background: #fff0f0;
    border: 2px solid #b18597;
    border-radius: 0.75em;
    transform-style: preserve-3d;
    transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), background 150ms cubic-bezier(0, 0, 0.58, 1);
    &::before {
      position: absolute;
      content: '';
      width: 100%;
      height: 100%;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: #f9c4d2;
      border-radius: inherit;
      box-shadow: 0 0 0 2px #b18597, 0 0.625em 0 0 #A6CCBA;
      transform: translate3d(0, 0.75em, -1em);
      transition: transform 150ms cubic-bezier(0, 0, 0.58, 1), box-shadow 150ms cubic-bezier(0, 0, 0.58, 1);
    }
    &:hover {
      background: #ffe9e9;
      transform: translate(0, 0.25em);
      &::before {
        box-shadow: 0 0 0 2px #b18597, 0 0.5em 0 0 #A6CCBA;
        transform: translate3d(0, 0.5em, -1em);
      }
    }
    &:active {
      background: #ffe9e9;
      transform: translate(0em, 0.75em);
      &::before {
        box-shadow: 0 0 0 2px #b18597, 0 0 #A6CCBA;
        transform: translate3d(0, 0, -1em);
      }
    }
  }
}


  .header-content {
  	color: #333;
	text-decoration: none;
	font-weight: bold;
	margin-left: 100px;
	margin: 0 20px;
    border:none;
    
    box-sizing: border-box;
  &::before, &::after {
    box-sizing: border-box;
  }
  }
  
/*   #navheader nav a { */
/*     color: #333; */
/*     text-decoration: none; */
/*     font-weight: bold; */
/*   } */
  
/*   #navheader nav a:hover { */
/*     color: #000; */
/*   } */
  

</style>
</head>

<header id="navheader">
	<nav>
            <button id="view-header-btn" class="header-content" onclick="board()">게시판</button>
            <button id="calendar-header-btn" class="header-content" onclick="dashBoard()">대시보드</button>
            <button id="recommendation-header-btn" class="header-content" onclick="cardRecommendation()">카드추천</button>
            <button id="member/info-header-btn" class="header-content" onclick="myPage()">마이페이지</button>

			<c:if test="${empty id}">
<!-- 				<li class="header-content"><a href="/account/user/login.do">로그인</a></li> -->
				<button id="login-header-btn" class="header-content" onclick="login()">로그인</button>
			</c:if>

			<c:if test="${not empty id}">
<!-- 				<li class="content1"><a href="/account/user/logout.do">로그아웃</a></li> -->
				<button id="logout-header-btn" class="header-content" onclick="logout()">로그아웃</button>
			</c:if>

	</nav>
</header>
<script>


		// 현재 URL
		var currentUrl = window.location.pathname;
		
		console.log(currentUrl);
		
		// 로그인 페이지나 관련 페이지일 때
		if (currentUrl.endsWith("login.do") || currentUrl.endsWith("/register.do") || currentUrl.endsWith("find-id.do") || currentUrl.endsWith("find-pw.do") || currentUrl.endsWith("reset-pw.do")) {
		    // "header-content" 클래스를 가진 모든 요소를 숨김
		    document.querySelectorAll(".header-content").forEach(function(item) {
		        item.style.display = "none";
		    });
		
		    // "header-buddy-budget-logo" 요소를 추가
		    var buddyBudgetLogo = document.createElement("div");
		    buddyBudgetLogo.id = "header-buddy-budget-logo";
		    buddyBudgetLogo.classList.add("buddy-budget-logo-style");
		    buddyBudgetLogo.innerHTML = '<a href="/account/index.do"><span data-attr="Budget">Budget</span><span data-attr="Buddy">Buddy</span></a>';
		    document.querySelector("header#navheader").appendChild(buddyBudgetLogo);
		} else {
		    // 로그인 페이지나 관련 페이지가 아닐 때는 "buddy-budget-logo" 요소를 제거
		    var buddyBudgetLogo = document.getElementById("header-buddy-budget-logo");
		    if (buddyBudgetLogo) {
		        buddyBudgetLogo.remove();
		    }
		}
		
// 		if (currentUrl.endsWith("/board/view.do")) {
// 		    document.querySelectorAll(".header-content").forEach(function(item) {
// 		        item.style.display = "none";
// 		    });
		
		function logout() {
		    window.location.href = "/account/user/logout.do";
		}
		
		function login() {
		    window.location.href = "/account/user/login.do";
		}
		function board() {
		    window.location.href = "/account/board/view.do";
		}
		
		function dashBoard() {
		    window.location.href = "/account/account/calendar.do";
		}
		
		function cardRecommendation() {
		    window.location.href = "/account/card/recommendation.do";
		}
		
		function myPage() {
		    window.location.href = "/account/user/member/info.do";
		}
		
		
</script>

</html>


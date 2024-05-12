<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
     <link type="image/png" sizes="16x16" rel="icon" href="/account/asset/images/icons8-돈-상자-16.png">
<!--     <link href="img/favicon.ico" rel="icon"> -->

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>

blockquote{
  display:block;
  background: #fff;
  padding: 15px 20px 15px 45px;
  margin: 0 0 20px;
  position: relative;
  
   border-left-color: #ADA0DE;
  border-right-color: #786CA7;
 
  /*Font*/
  font-family: Georgia, serif;
  font-size: 14px;
  line-height: 1.2;
  color: #666;
 
  /*Box Shadow - (Optional)*/
  -moz-box-shadow: 2px 2px 15px #ccc;
  -webkit-box-shadow: 2px 2px 15px #ccc;
  box-shadow: 2px 2px 15px #ccc;
 
  /*Borders - (Optional)*/
  border-left-style: solid;
  border-left-width: 15px;
  border-right-style: solid;
  border-right-width: 2px;
}
 
blockquote::before{
  content: &quot;\201C&quot;; /*Unicode for Left Double Quote*/
 
  /*Font*/
  font-family: Georgia, serif;
  font-size: 60px;
  font-weight: bold;
  color: #999;
 
  /*Positioning*/
  position: absolute;
  left: 10px;
  top:5px;
 
}
 
blockquote::after{
  /*Reset to make sure*/
  content: &quot;&quot;;
}
 
blockquote a{
  text-decoration: none;
  cursor: pointer;
  padding: 0 3px;
/*   color: #c76c0c; */
}
 
blockquote a:hover{
/*  color: #666; */
}
 
blockquote em{
  font-style: italic;
}
 
  /*Default Color Palette*/
blockquote.default{
  border-left-color: #656d77;
  border-right-color: #434a53;
}

.page-description h4 a {
font-family: 'TTLaundryGothicB';
}

.index-page-item-area hr {
	padding: 0;
	margin: 0;
	color: #afb0b2;
}

.index-note-style {
  position: relative;
  width: 100%%;
  padding: 1.2em 1.5em;
/*   margin: 24% 0 0 21%; */
/*   color: #fff; */
  background: #FEF9EA;
  overflow: hidden;
  display: flex;
    justify-content: space-around;
    align-items: center;
}

.index-note-style:before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  border-width: 0 16px 16px 0;
  border-style: solid;
  border-color: #fff #fff #FCF1CA #FCF1CA ;
  background: #D5BEC2;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.3), -1px 1px 1px rgba(0, 0, 0, 0.2);
  display: block;
  width: 0
}    
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
        <%@include file="/WEB-INF/views/inc/sidebar.jsp"%>
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
    <div class="content-total-style">   
        <div class="index-page">

    <div class="index-page-item-area main-box-container-style">
    <div>
    	<section>
            <h2>
            <span>
            "소비 패턴 분석을 통한
            </span>
            <span>
            지출 관리 친구"
            </span>
            </h2>
<!--             <span>"Budget</span><span>Buddy"</span> -->
    	</section>
    </div>
    <hr>
    <div class="index-page-box-area">
<!--     	<blockquote class="page-description">
            <h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
            <p>설명을 여기에 추가하세요.</p>
            <p></p>
            <p></p>
		</blockquote>
    	<blockquote class="page-description">
            <h4><a href="/account/card/recommendation.do"><i class="fa-solid fa-ranking-star"></i> 카드 추천</a></h4>
            <p>설명을 여기에 추가하세요.</p>
		</blockquote>
	   	<blockquote class="page-description">
            <h4><a href="/account/board/view.do"><i class="fas fa-clipboard"></i> 게시판</a></h4> 
            <p>설명을 여기에 추가하세요.</p>
		</blockquote> -->
<!-- 		<div class="box">
			<h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
            <p>설명을 여기에 추가하세요.</p>
            <p></p>
            <p></p>
		
		</div>
		<div class="box">
			<h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
            <p>설명을 여기에 추가하세요.</p>
            <p></p>
            <p></p>
		
		</div>
		<div class="box">
			<h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
            <p>설명을 여기에 추가하세요.</p>
            <p></p>
            <p></p>
		
		</div> -->
		
		
		<div class="index-note-style">
						<div class="note-style-text">
							<!-- 글을 여기에 추가하세요 -->
							<div>
							<h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
				            <p>설명을 여기에 추가하세요.</p>
				            <p></p>
				            <p></p>
							</div>
						</div>
					</div>
		<div class="index-note-style">
						<div class="note-style-text">
							<!-- 글을 여기에 추가하세요 -->
							<div>
							<h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
				            <p>설명을 여기에 추가하세요.</p>
				            <p></p>
				            <p></p>
							</div>
						</div>
					</div>
		<div class="index-note-style">
						<div class="note-style-text">
							<!-- 글을 여기에 추가하세요 -->
							<div>
							<h4><a href="/account/account/calendar.do"><i class="fas fa-piggy-bank"></i> 대시보드</a></h4>
				            <p>설명을 여기에 추가하세요.</p>
				            <p></p>
				            <p></p>
							</div>
						</div>
					</div>
		
    </div>
    </div>
<!--     	<div class="index-page-item-area">
        	<img src="/account/asset/images/BudgetBuddy.jpg" alt="이미지">
        </div> -->
    	<div class="index-page-item-area">
        	<img src="/account/asset/images/green-account-book-img.jpeg" alt="이미지">
        </div>

    <script src="script.js"></script>

        <!-- fakecontent 끝 -->
        </div>
        </div>
    </div>
    </div>

    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>


    </script>
</body>

</html>

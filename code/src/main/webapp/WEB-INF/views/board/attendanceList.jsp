<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출석 게시판</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>
	body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    
    header {
        background-color: #333;
        padding: 20px;
    }
    
    .banner img {
        width: 100%;
        height: 150px;
    }
    
    main {
        display: flex;
        justify-content: space-around;
        padding: 20px;
    }
    
    .section {
        width: 30%;
        padding: 20px;
        background-color: #f4f4f4;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    h2 {
        color: #333;
    }
    
    p {
        color: #666;
    }
	
</style>
</head>
<body>

	<header>
        <div class="banner">
            <!-- 배너 이미지를 여기에 추가하세요 -->
            <img src="./images/banner.jpg" alt="배너 이미지">
        </div>
    </header>

    <main>
        <section class="section">
            <h2>게시판</h2>
            <p>게시판에 대한 설명을 여기에 추가하세요.</p>
        </section>

        <section class="section">
            <h2>대시보드</h2>
            <p>대시보드에 대한 설명을 여기에 추가하세요.</p>
        </section>

        <section class="section">
            <h2>카드추천</h2>
            <p>카드추천에 대한 설명을 여기에 추가하세요.</p>
        </section>
    </main>

	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script>
		
	</script>
</body>
</html>


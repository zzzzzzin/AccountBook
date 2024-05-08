<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>



/*       nav ul { */
/*         list-style-type: none; */
/*         padding: 0; */
/*         margin: 0; */
/*       } */

/*       nav li { */
/*         padding: 15px 20px; */
/*         border-bottom: 1px solid #444; */
/*       } */

/*       nav li:last-child { */
/*         border-bottom: none; */
/*       } */

/*       nav a { */
/*         color: #fff; */
/*         text-decoration: none; */
/*         display: flex; */
/*         align-items: center; */
/*       } */

/*       nav a i { */
/*         margin-right: 10px; */
/*       } */

/*     .sidebar.hidden { */
/*         width: 0; */
/*         overflow: hidden; */
/*         transition: width 0.5s ease; */
/*     } */

/*     .content.expanded { */
/*         margin-left: 0; */
/*         transition: margin-left 0.5s ease; */
/*     } */
</style>
</head>

<div class="sidebar">
	<div id="buddy-budget-logo"><a href="/account/index.do"><span data-attr="Budget">Budget</span><span data-attr="Buddy">Buddy</span></a></div>
	<nav>
		<ul>
			<li><a href="/account/card/recommendation.do"><i class="fas fa-home"></i>카테고리별 추천</a></li>
			<li><a href="/account/card/personalized-recommendation.do"><i class="fas fa-home"></i>맞춤 추천</a></li>
		</ul>
	</nav>
</div>
<script>
		
</script>

</html>
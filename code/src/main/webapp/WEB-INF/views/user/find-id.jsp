<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/account/asset/css/style.css">
<link rel="stylesheet" href="/account/asset/css/corona_style.css">
<style>
body {
	color: black;
}

.card {
	border: none;
}

.form-control {
	background-color: #D9D9D9;
	border: none;
}

.form-control.click {
	background-color: #D9D9D9;
	border: none;
}

.btn-primary {
	background-color: #D9D9D9;
	border: #D9D9D9;
	color: black;
}

.btn-primary:hover {
	background-color: #D9D9D9;
	border: #D9D9D9;
	color: black;
}

.btn-primary.click {
	background-color: #D9D9D9;
	border: #D9D9D9;
	color: black;
}

.find {
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/inc/header.jsp"%>

	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="row w-100 m-0">
				<div
					class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
					<div class="card col-lg-4 mx-auto">
						<div class="card-body px-5 py-5">
							<h3 class="card-title text-left mb-3">아이디 찾기</h3>
							<div class="successFind">
								<form method="post" action="/account/user/find-id.do">
									<div class="form-group">
										<label>이름</label> <input type="text"
											class="form-control p_input" name="name">
									</div>
									<div class="form-group">
										<label>주민번호</label> <input type="text"
											class="form-control p_input" name="ssn">
									</div>
									<div class="text-center">
										<button type="submit"
											class="btn btn-primary btn-block enter-btn">아이디 찾기</button>
									</div>
								</form>

								<div class="successFind">
									<c:choose>
										<c:when test="${not empty foundId}">
											<p>회원님의 아이디는 ${foundId} 입니다.</p>
										</c:when>
										<c:when test="${empty foundId and not empty param.name}">
											<p>입력한 정보와 일치하는 아이디가 없습니다.</p>
										</c:when>
										<c:otherwise>
											<p>이름과 주민번호를 입력하여 아이디를 찾아주세요.</p>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>
					</div>
					<!-- content-wrapper ends -->
				</div>
				<!-- row ends -->
			</div>
			<!-- page-body-wrapper ends -->
		</div>
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="/account/asset/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/account/asset/js/off-canvas.js"></script>
	<script src="/account/asset/js/hoverable-collapse.js"></script>
	<script src="/account/asset/js/misc.js"></script>
	<script src="/account/asset/js/settings.js"></script>
	<script src="/account/asset/js/todolist.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- endinject -->

	<script>
		
	</script>
</body>
</html>


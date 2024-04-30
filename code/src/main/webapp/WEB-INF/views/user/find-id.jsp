<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
				<div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
					<div class="card col-lg-4 mx-auto">
						<div class="card-body px-5 py-5">
							<h3 class="card-title text-left mb-3">아이디 찾기</h3>
							<form>
								<div class="form-group">
									<label>이름</label> <input type="text" class="form-control p_input">
								</div>
								<div class="form-group">
									<label>주민번호</label> <input type="text" class="form-control p_input">
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary btn-block enter-btn">아이디 찾기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
			</div>
			<!-- row ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="/account/asset
	
	/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="/account/asset/js/off-canvas.js"></script>
	<script src="/account/asset/js/hoverable-collapse.js"></script>
	<script src="/account/asset/js/misc.js"></script>
	<script src="/account/asset/js/settings.js"></script>
	<script src="/account/asset/js/todolist.js"></script>
	<!-- endinject -->

	<script>
		
	</script>
</body>
</html>


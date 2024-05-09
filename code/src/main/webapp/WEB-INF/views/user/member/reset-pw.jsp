<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/account/asset/css/materialdesignicons.min.css">
<link rel="stylesheet" href="/account/asset/css/vendor.bundle.base.css">
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
      
      .find-pw-sucess, .find-pw-fail {
        background-color: #d9d9d9;
        margin: auto;
        text-align: center;
        width: 300px;
        padding: 5px;
      }

    .find-pw-fail {
      visibility: hidden;
    }
    .find-pw-close {
      display: flex;
      justify-content: flex-end;
    }

    .find-pw-close-btn {
      align-items: end;
      border: none;
      width: 50px;
      height: 30px;
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
                <h3 class="card-title text-left mb-3">비밀번호 재설정</h3>
                <form method="POST">
	                  <div class="form-group">
	                    <label>아이디(이메일)</label>
	                    <input type="text" class="form-control p_input" name="id" value="${id}" readonly>
	                  </div>
	                  <div class="form-group">
	                    <label>새 비밀번호</label>
	                    <input type="text" class="form-control p_input" name="pw">
	                  </div>
	                  <div class="form-group">
	                    <label>새 비밀번호(확인)</label>
	                    <input type="text" class="form-control p_input" name="pwCheck">
	                  </div>
	                  <div class="text-center">
	                    <button type="submit" class="btn btn-primary btn-block enter-btn">비밀번호 변경</button>
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


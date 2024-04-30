<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- plugins:css -->
    <link rel="stylesheet" href="/account/asset/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="/account/asset/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="/account/asset/css/corona_style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="/account/asset/images/favicon.png" />
<style>
	#username{
      display: flex;
    }

    .duplicateBtn{
      margin-left: 10px;
      height: 40px;
      width: 15%;
    }

    .colorD9{
      background-color: #D9D9D9;
    }

    .inputbox{
      height: 40px;
      
    }

    .dupnone{
      width: 85%;
    }
    
    .colorAAA{
      background-color: #AAAAAA;
    }

    .radsetcss{
      margin-left: 30px;
    }

    .marginfix{
      /* padding-left: 7rem !important; */
    }

    .updatefix{
      align-items: center;
    }

    #survey{
      /* display: none;  */
    }

    #duptext{
      font-size: 10px;
    }
</style>
</head>
<body>

	<%@include file="/WEB-INF/views/inc/header.jsp"%>
	
	<div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center colorD9">
            <div class="card col-lg-4 mx-auto colorAAA">
              <div class="card-body px-5 py-5 marginfix colorAAA">
                <h3 class="card-title text-left mb-3">Register</h3>
                <form>
                  <label>Username</label>
                  <div class="form-group " id="username">
                    <input type="text" class="form-control p_input inputbox updatefix colorD9">
                    
                    <button class="duplicateBtn"><span id="duptext">중복 확인</span></button>
                  </div>
                  <label>비밀번호</label>
                  <div class="form-group" id="pwboxnow">
                    <input type="text" class="form-control p_input inputbox dupnone colorD9">
                  </div>
                  <label>비밀번호 재입력</label>
                  <div class="form-group" id="username">
                    <input type="text" class="form-control p_input inputbox dupnone colorD9">
                  </div>
                  <label>이름</label>
                  <div class="form-group" id="username">
                    <input type="text" class="form-control p_input inputbox dupnone colorD9">
                  </div>
                  <label>닉네임</label>
                  <div class="form-group" id="username">
                    <input type="text" class="form-control p_input inputbox colorD9">
                    <button class="duplicateBtn"><span id="duptext">중복 확인</span></button>
                  </div>
                  <label>전화번호</label>
                  <div class="form-group" id="username">
                    <input type="text" class="form-control p_input inputbox colorD9">
                    <button class="duplicateBtn"><span id="duptext">중복 확인</span></button>
                  </div>
                  <label>주민등록 번호</label>
                  <div class="form-group" id="username">
                    <input type="text" class="form-control p_input inputbox colorD9">
                    <button class="duplicateBtn"><span id="duptext">중복 확인</span></button>
                  </div>
                  <label>성별</label>
                  <div>
                    <input class type="radio" id="huey" name="gender" value="huey" checked />
    <label for="huey">남자</label>
    <input class="radsetcss" type="radio" id="huey" name="gender" value="huey" checked />
    <label for="huey">여자</label>
                  </div>
                  <div>
                  <input type="checkbox" name="challenge" id="" >
                  <label>챌린지 설정하기 (선택)</label>
                  </div>
                  <div id="survey">
                  <div>압박 강도</div>
                  <div>알림 빈도</div>
                  <div>
                    <input type="radio" id="alram" name="drone" value="huey" checked />
    <label for="huey">상</label>
    <input class="radsetcss"type="radio" id="alram" name="drone" value="huey" checked />
    <label for="huey">중</label>
    <input class="radsetcss" type="radio" id="alram" name="drone" value="huey" checked />
    <label for="huey">하</label>
                  </div>
                  <label>월급</label>
                  <div class="form-group" id="pwboxnow">
                    <input type="number" class="form-control p_input inputbox colorD9">
                  </div>
                  <label>적축 목표 금액</label>
                  <div class="form-group" id="pwboxnow">
                    <input type="number" class="form-control p_input inputbox colorD9">
                  </div>
                  <label>적축 목표 기간</label>
                  <div class="form-group" id="pwboxnow">
                    <select class="form-control inputbox colorD9" name="
                    " id="">
                      <option value="" selected disabled>기간을 선택해주세요</option>
                      <option value="0">없음</option>
                      <option value="1">1 개월</option>
                      <option value="3">3 개월</option>
                      <option value="12">1년 </option>
                    </select>
                  </div>
                </div>
                 
                  <div class="form-group d-flex align-items-center justify-content-between">
                    <div class="form-check">
                      <label class="form-check-label">
                    </div>
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn inputbox">가입하기</button>
                  </div>
                  <div class="d-flex">
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
    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="../../assets/js/settings.js"></script>
    <script src="../../assets/js/todolist.js"></script>
    <!-- endinject -->
	
	<script>
		
	</script>
</body>
</html>


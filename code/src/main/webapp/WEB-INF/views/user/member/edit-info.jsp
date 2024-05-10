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
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<style>


.user-profile-mypage {
  width:90%;
  height: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  background-color: #f3f6f9;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1), 0 6px 20px rgba(0, 0, 0, 0.1); 
  border-radius: 10px;
}
.user-profile-mypage-img {
            min-width: 200px;
            min-height: 200px;
            border-radius: 50%;
            background-color: #ddd;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 12px;
            color: #666;
            margin: 50px;
            border: 1px solid black;
            
        }



.left{
  width: 50%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 5px;
  
}
.right{
  width: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
}
#userinfo {
  display: flex;
  flex-direction: column;
  width: 100%; 
  max-width: 600px; 
  padding: 20px;
  background: #f3f6f9; 
  border-radius: 8px; 
}

.userinfo-content {
  display: flex;
  flex-direction: row;
  justify-content: space-between; 
  align-items: baseline;
  margin-bottom: 10px; 
  padding: 10px; 
  border-bottom: 1px solid #ddd; 
  
}

.userinfo.left {
  flex: 1;
  text-align: left;
  font-weight: bold;
  padding: 10px 20px; 
  background-color: #e8e8e8; 
  border-right: 2px solid #ccc; 
  box-shadow: inset 0 0 5px rgba(0,0,0,0.1); 
  margin-right: 10px; 
}

.userinfo.right {
  flex: 1.5; 
  text-align: right;
  font-weight: normal;
  padding: 10px 20px; 
  color: #555;
  background-color: #fff;
  border-left: none;
}

/* Enhances the last item by removing the bottom border */
.userinfo-content:last-child {
  border-bottom: none;
}

#picture{
  width: 100%;
  border: 1px solid black;
}

.editcontrol{
  display: flex;
  justify-content: center;
  text-align: center;
  border: none;
  width: 100%;
}

#submit-button{
  width: 100%;
  background-color: #d9d9d9;
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

#submit-button:hover{
  box-shadow: inset 0 0 5px rgba(0,0,0,0.1);
  border-radius: 5px;
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
        <%@include file="/WEB-INF/views/inc/mypage-sidebar.jsp"%>
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
        <div class="mypage-box-container-style">
          <div class="user-profile-mypage">
              <div class="user-profile-mypage-img">
                  개인 프로필 이미지
              </div>
              <form action="/account/user/member/edit-info.do" method="POST" id="userinfo">
                <div class="userinfo-content">
                    <div class="userinfo left">이름</div>
                    <div class="userinfo right"><input class="editcontrol" type="text" name="name" value="${dto.name}"></div>
                </div>
                <div class="userinfo-content">
                    <div class="userinfo left">닉네임</div>
                    <div class="userinfo right"><input class="editcontrol" type="text" name="nickname" value="${dto.nickname}"></div>
                </div>
                <div class="userinfo-content">
                    <div class="userinfo left">전화번호</div>
                    <div class="userinfo right"><input class="editcontrol" type="text" name="phonenumber" value="${dto.phoneNumber}"></div>
                </div>
                <div class="userinfo-content">
                    <div class="userinfo left">주민등록번호</div>
                    <div class="userinfo right" id="ssn">
                      <input class="editcontrol" type="text" name="ssn" value="${dto.ssn}" readonly>
                    </div>
                </div>
                <div class="userinfo-content">
                    <button type="submit" id="submit-button" >수정</button>
              </div>
              </form>
      </div>
    </div>
  </div>

        <!-- fakecontent 끝 -->
        <!-- Back to Top -->
        
    </div>
    </div>
</div>
    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>

</body>

</html>

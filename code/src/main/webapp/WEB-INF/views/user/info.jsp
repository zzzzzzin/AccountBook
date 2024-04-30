<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    .myPage {
        border: 1px solid black;
        width: 500px;
        height: 500px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .user-profile {
        border: 1px solid black;
        width: 400px;
        height: 400px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .user-profile-img {
        border: 1px solid black;
        width: 100px;
        height: 100px;
        border-radius: 50%;
        background-color: #ffffff;      
        margin-bottom: 10px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .user-profile-container {
        border: 1px solid black;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 300px;
        height: 300px;
    }

    .user-profile-name, .user-profile-nickname, .user-profile-sex, .user-profile-phone, .user-profile-SSN {
        width: 300px;
        border: 1px solid black;
        display: flex;
        justify-content: space-evenly;
        width: 300px;
        height: 30px;
        margin-bottom: 5px;
        
    }

    .user-profile-name-title, .user-profile-nickname-title, 
    .user-profile-sex-title, .user-profile-phone-title, .user-profile-SSN-title {
        width: 100px;
    }

    .user-profile-name-real, .user-profile-nickname-real, .user-profile-sex-real, .user-profile-phone-real, .user-profile-SSN-real {
        border: 1px solid black;
        background-color: #d9d9d9;
        width: 150px;
        text-align: center;
    }

    .myPage-btns {
        border: 1px solid black;
        width: 500px;
        display: flex;
        justify-content: space-evenly;
        margin-top: 10px;
    }

</style>

<body>
    <div class="myPage">
        <div class="user-profile">
            <div class="user-profile-img">
                개인 프로필 이미지
            </div>
            <div class="user-profile-container">
                <div class="user-profile-name">
                    <div class="user-profile-name-title">이름</div>
                    <div class="user-profile-name-real">홍길동</div>
                </div>
                <div class="user-profile-nickname">
                    <div class="user-profile-nickname-title">닉네임</div>
                    <div class="user-profile-nickname-real">hong</div>
                </div>
                <div class="user-profile-sex">
                    <div class="user-profile-sex-title">성별</div>
                    <div class="user-profile-sex-real">남</div>
                </div>
                <div class="user-profile-phone">
                    <div class="user-profile-phone-title">전화번호</div>
                    <div class="user-profile-phone-real">010-1234-5678</div>
                </div>
                <div class="user-profile-SSN">
                    <div class="user-profile-SSN-title">주민등록번호</div>
                    <div class="user-profile-SSN-real">123456-1234567</div>
                </div>
            </div>
        </div>
        <div class="myPage-btns">
            <div>
                <button type="button">비밀번호 수정</button>
            </div>
            <div>
                <button type="button">개인정보 수정</button>
            </div>
            <div>
                <button type="button">회원 탈퇴</button>
            </div>
        </div>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.sidebar {
        width: 300px;
        background-color: #333;
        color: #fff;
        height: 100vh;
}

      .logo {
        padding: 20px;
        font-size: 20px;
        font-weight: bold;
        border-bottom: 1px solid #444;
      }

      nav ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
      }

      nav li {
        padding: 15px 20px;
        border-bottom: 1px solid #444;
      }

      nav li:last-child {
        border-bottom: none;
      }

      nav a {
        color: #fff;
        text-decoration: none;
        display: flex;
        align-items: center;
      }

      nav a i {
        margin-right: 10px;
      }

    .sidebar.hidden {
        width: 0;
        overflow: hidden;
        transition: width 0.5s ease;
    }

    .content.expanded {
        margin-left: 0;
        transition: margin-left 0.5s ease;
    }
</style>
</head>

<div class="sidebar">
	<div class="logo">이미지</div>
	<nav>
		<ul>
			<li class="dropdown"><a href="/account/user/member/info.do"><i class="fas fa-user"></i>개인정보 조회</a>
				<ul class="submenu">
					<li><a href="/account/user/member/edit-pw.do">비밀번호 수정</a></li>
					<li><a href="/account/user/member/edit-info.do">개인정보 수정</a></li>
					<li><a href="/account/user/member/unregister.do">회원탈퇴</a></li>
				</ul></li>
			<li><a href="/account/user/member/edit-challenge.do"><i class="fas fa-user"></i> 챌린지 설정</a></li>
			<li><a href="/account/user/member/my-post.do"><i class="fas fa-user"></i> 내가 쓴 글</a></li>
			<li><a href="/account/user/member/my-comment.do"><i class="fas fa-user"></i> 내가 쓴 댓글</a>
			<li><a href="/account/card/view.do"><i class="fas fa-user"></i> 카드 조회</a>
			<li><a href="/account/user/member/friend-invitation.do"><i class="fas fa-user"></i> 친구 초대</a>
		</ul>
	</nav>
</div>
<script>
		
</script>

</html>
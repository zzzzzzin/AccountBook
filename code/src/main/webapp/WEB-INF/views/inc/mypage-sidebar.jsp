<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>

</style>
</head>

<div class="sidebar">
	            <div id="buddy-budget-logo"><a href="/account/index.do"><span data-attr="Budget">Budget</span><span data-attr="Buddy">Buddy</span></a></div>

	<nav>
		<ul>
			<li class="dropdown"><a href="/account/user/member/info.do"><i class="fas fa-user"></i>개인정보 조회</a>
				<ul class="submenu">
					<li><a href="/account/user/member/edit-pw.do">비밀번호 수정</a></li>
					<li><a href="/account/user/member/edit-info.do">개인정보 수정</a></li>
					<li><a href="/account/user/unregister.do">회원탈퇴</a></li>
				</ul></li>
			<li><a href="/account/user/member/edit-challenge.do"><i class="fas fa-user"></i> 챌린지 설정</a></li>
			<li><a href="/account/user/member/my-post.do"><i class="fas fa-user"></i> 내가 쓴 글</a></li>
			<li><a href="/account/user/member/my-comment.do"><i class="fas fa-user"></i> 내가 쓴 댓글</a>
			<li><a href="/account/user/member/my-card.do"><i class="fas fa-user"></i> 카드 조회</a>
			<li><a href="/account/user/member/friend-invitation.do"><i class="fas fa-user"></i> 친구 초대</a>
		</ul>
	</nav>
</div>
<script>
		
</script>

</html>
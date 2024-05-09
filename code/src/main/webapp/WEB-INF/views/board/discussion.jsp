<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>게시판 홈</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
</head>

<style>
#fakecontent{
    display: flex;
    justify-content: center;
   }

#postpagecontent{
  margin: 20px;

}

#postmaincontent{
  margin: 20px;
}
#postmaincontentreaction{
  display: flex;
  justify-content: center;
}

#commentlevel1head{
  justify-content: space-between;
  align-content: baseline;
}

#commentlevel1info{
  display: flex;
  flex-direction: row;
}

.post-actions-comment{
  positions: relative;

}

.post-actions-comment i.material-icons {
        font-size: 16px;  
    }
    .post-actions-comment span {
        position: relative;
        font-size: 14px; 
        top: -10px
    }

    #commentcontent {
        margin: 10px !important;
        padding: 0;
    }

   #subcommentarrow{
      margin-top: 7px;
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
        <%@include file="/WEB-INF/views/inc/board-sidebar.jsp"%>
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
        
        <div id="fakecontent">
          <!-- 게시판 게시물 시작 -->
          <div class="container" id="postpagecontent">
            <div class="post-box">
              <h2>
              	${post.title}
			  </h2>
              <div class="post-header" id="maincontent">
                <img class="user-image" src="user-image.jpg" alt="사용자 이미지">
                <div class="post-info">
	                <c:choose>			  		
				  		<c:when test="${post.seqBoard == 1}">
				  			<span>공지사항</span>
				  		</c:when>
				  		<c:when test="${post.seqBoard == 2}">
				  			<span>자유게시판</span>
				  		</c:when>
				  		<c:when test="${post.seqBoard == 3}">
				  			<span>건의게시판</span>
				  		</c:when>
				  		<c:when test="${post.seqBoard == 4}">
				  			<span>출석게시판</span>
				  		</c:when>
				  	</c:choose>
                  <span>작성자: ${post.me_nickName != null ? post.me_nickName : post.ad_nickName}</span>
                  <span>등록일: ${post.writeDate}</span>
                </div>
              </div>
              <div class="post-content" id="postmaincontent">
                <span>${post.content}</span>
              </div>
              <div class="post-actions" id="postmaincontentreaction">
              	<span><i class="material-icons" id="temp">thumb_up</i><span id="post-like">${post.likeCount}</span></span>
                <span><i class="material-icons">thumb_down</i><span id="post-dislike">${post.dislikeCount}</span></span>
                <span><i class="material-icons">report</i> 신고</span>
              </div>     
            </div>
                        <!-- 댓글 시작 -->
<div class="comments">
    <c:forEach var="comment" items="${comments}">
        <div class="comment-box">
            <div class="post-header" id="commentlevel1head">
                <div class="post-info" id="commentlevel1info">
                    <c:choose>
                        <c:when test="${not empty comment.profileImage}">
                            <img class="user-image" src="${comment.profileImage}" alt="사용자 이미지">
                        </c:when>
                        <c:otherwise>
                            <img class="user-image" src="/profile-images/default-user-image.jpg" alt="기본 사용자 이미지">
                        </c:otherwise>
                    </c:choose>
                    <div class="post-info">
                        <span>작성자: ${comment.nickname}</span>
                        <span>등록일: ${comment.writeDate}</span>
                    </div>
                </div>
<div class="post-actions-comment">
    <span><i class="material-icons">thumb_up</i> ${comment.likeCount}</span>
    <span><i class="material-icons">thumb_down</i> ${comment.dislikeCount}</span>
    <span><i class="material-icons">report</i> 신고</span>
    <span class="reply-toggle">답글</span>
    <c:if test="${not empty sessionScope.seqUser && sessionScope.seqUser == comment.seqUser}">
        <span class="edit-comment" data-comment-seq="${comment.seq}">수정</span>
    </c:if>
<c:if test="${not empty sessionScope.seqUser && (sessionScope.seqUser == comment.seqUser || sessionScope.seqPriv == 3)}">
    <span class="delete-comment" data-comment-seq="${comment.seq}">삭제</span>
</c:if>
</div>
            </div>
            <div class="post-content">
                <div id="commentcontent">${comment.content}</div>
            </div>
<!-- 답글 작성 폼 -->
<div class="comment-form reply-form" style="display: none;">
    <form onsubmit="return false;">
        <input type="hidden" name="seqComments" value="${comment.seq}">
        <input type="hidden" name="seqUser" value="${sessionScope.seqUser}">
        <input type="hidden" name="seqPost" value="${post.seq}">
        <textarea name="content" placeholder="답글을 입력하세요."></textarea>
        <button type="button" onclick="addReplyComment(this)">답글 등록</button>
    </form>
</div>
            </div>
              <!-- 대댓글 시작 -->
              <c:forEach var="replyComment" items="${comment.replyComments}">
            <div class="comment-box comment-reply">
                <div class="post-header" id="commentlevel1head">
                    <div class="post-info" id="commentlevel1info">
                        <i class="material-icons" id="subcommentarrow">subdirectory_arrow_right</i>
                        <c:choose>
                            <c:when test="${not empty replyComment.profileImage}">
                                <img class="user-image" src="${replyComment.profileImage}" alt="사용자 이미지">
                            </c:when>
                            <c:otherwise>
                                <img class="user-image" src="/profile-images/default-user-image.jpg" alt="기본 사용자 이미지">
                            </c:otherwise>
                        </c:choose>
                        <div class="post-info">
                            <span>작성자: ${replyComment.nickname}</span>
                            <span>등록일: ${replyComment.writeDate}</span>
                        </div>
                    </div>
<div class="post-actions-comment">
    <span><i class="material-icons">thumb_up</i> ${comment.likeCount}</span>
    <span><i class="material-icons">thumb_down</i> ${comment.dislikeCount}</span>
    <span><i class="material-icons">report</i> 신고</span>
    <span class="reply-toggle">답글</span>
    <c:if test="${sessionScope.seqUser eq replyComment.seqUser}">
<span class="edit-reply-comment" data-reply-comment-seq="${replyComment.seq}">수정</span>
</c:if>
<c:if test="${not empty sessionScope.seqUser && (sessionScope.seqUser == replyComment.seqUser || sessionScope.seqPriv == 3)}">
    <span class="delete-reply-comment" data-reply-comment-seq="${replyComment.seq}">삭제</span>
</c:if>
</div>
                </div>
                <div class="post-content">
                    <div id="commentcontent">${replyComment.content}</div>
                </div>
            </div>
        </c:forEach>
              <!-- 대댓글 끝 -->
              </c:forEach>
</div>
<input type="hidden" name="seqUser" value="${not empty sessionScope.seqUser ? sessionScope.seqUser : ''}">
<!-- 댓글 쓰기 시작 -->
<div class="comment-form">
    <form id="commentForm">
        <input type="hidden" name="seqPost" value="${param.seq}">
        <input type="hidden" name="seqUser" value="${sessionScope.seqUser}">
        <textarea name="commentContent" id="commentContent" placeholder="댓글을 입력하세요." required></textarea>
        <button type="submit">댓글 등록</button>
    </form>
</div>

<!-- 댓글 쓰기 끝 -->
           
          </div>
          <!-- 게시판 게시물 끝 -->
        </div>
        <!-- fakecontent 끝 -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        
    	</div>
    </div>
  
  <!--  댓글 수정 폼  -->
<div class="comment-edit-form" style="display: none;">
    <form onsubmit="return false;">
        <input type="hidden" name="commentSeq" value="${comment.seq}">
        <textarea name="editedContent">${comment.content}</textarea>
        <button type="button" onclick="updateComment(this)">저장</button>
        <button type="button" onclick="cancelEdit(this)">취소</button>
    </form>
</div>
    <!-- JavaScript Libraries -->
   


<!-- 답글 수정 폼 -->
<div class="reply-comment-edit-form" style="display: none;">
<form onsubmit="return false;">
    <input type="hidden" name="replyCommentSeq" value="${replyComment.seq}">
    <textarea name="editedContent">${replyComment.content}</textarea>
    <button type="button" onclick="updateReplyComment(this)">저장</button>
    <button type="button" onclick="cancelReplyEdit(this)">취소</button>
</form>
</div>
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
   
<script>

//답글 삭제 버튼
$(document).on('click', '.delete-reply-comment', function() {
    var replyCommentSeq = $(this).data('reply-comment-seq');
    
    if (confirm('정말로 답글을 삭제하시겠습니까?')) {
        $.ajax({
            url: '${pageContext.request.contextPath}/board/deleteReplyComment.do',
            type: 'POST',
            data: {
                replyCommentSeq: replyCommentSeq
            },
            success: function(response) {
                if (response === 'Success') {
                    alert('답글이 삭제되었습니다.');
                    location.reload();
                } else if (response === 'Unauthorized') {
                    alert('답글 삭제 권한이 없습니다.');
                } else {
                    alert('답글 삭제에 실패했습니다.');
                }
            },
            error: function() {
                alert('답글 삭제에 실패했습니다.');
            }
        });
    }
});

//답글 수정 버튼
$(document).on('click', '.edit-reply-comment', function() {
    var commentBox = $(this).closest('.comment-reply');
    var replyCommentSeq = $(this).data('reply-comment-seq');
    var replyCommentContent = commentBox.find('.post-content').text().trim();

    // 이미 수정 폼이 열려있는 경우 무시
    if (commentBox.find('.reply-comment-edit-form').length > 0) {
        return;
    }

    // 다른 수정 폼은 닫기
    $('.reply-comment-edit-form').remove();

    var editForm = '<div class="reply-comment-edit-form">' +
                   '<form onsubmit="return false;">' +
                   '<input type="hidden" name="replyCommentSeq" value="' + replyCommentSeq + '">' +
                   '<textarea name="editedContent">' + replyCommentContent + '</textarea>' +
                   '<button type="button" onclick="updateReplyComment(this)">저장</button>' +
                   '<button type="button" onclick="cancelReplyEdit(this)">취소</button>' +
                   '</form>' +
                   '</div>';
    commentBox.find('.post-content').hide().after(editForm);
});

//답글 수정 버튼
$(document).on('click', '.edit-reply-comment', function() {
    var commentBox = $(this).closest('.comment-reply');
    var replyCommentSeq = $(this).data('reply-comment-seq');
    var replyCommentContent = commentBox.find('.post-content').text().trim();

    // 이미 수정 폼이 열려있는 경우 무시
    if (commentBox.find('.reply-comment-edit-form').length > 0) {
        return;
    }

    // 다른 수정 폼은 닫기
    $('.reply-comment-edit-form').remove();

    var editForm = '<div class="reply-comment-edit-form">' +
                   '<form onsubmit="return false;">' +
                   '<input type="hidden" name="replyCommentSeq" value="' + replyCommentSeq + '">' +
                   '<textarea name="editedContent">' + replyCommentContent + '</textarea>' +
                   '<button type="button" onclick="updateReplyComment(this)">저장</button>' +
                   '<button type="button" onclick="cancelReplyEdit(this)">취소</button>' +
                   '</form>' +
                   '</div>';
    commentBox.find('.post-content').hide().after(editForm);
});

// 답글 수정 함수
function updateReplyComment(btn) {
    var form = $(btn).closest('form');
    var replyCommentSeq = form.find('input[name="replyCommentSeq"]').val();
    var editedContent = form.find('textarea[name="editedContent"]').val();

    $.ajax({
        url: '${pageContext.request.contextPath}/board/editReplyComment.do',
        type: 'POST',
        data: {
            replyCommentSeq: replyCommentSeq,
            editedContent: editedContent
        },
        success: function(response) {
            if (response === 'Success') {
                alert('답글이 수정되었습니다.');
                location.reload();
            } else if (response === 'Unauthorized') {
                alert('답글 수정 권한이 없습니다.');
            } else {
                alert('답글 수정에 실패했습니다.');
            }
        },
        error: function() {
            alert('답글 수정에 실패했습니다.');
        }
    });
}

// 답글 수정 취소 함수
function cancelReplyEdit(btn) {
    var commentBox = $(btn).closest('.comment-reply');
    commentBox.find('.reply-comment-edit-form').remove();
    commentBox.find('.post-content').show();
}


// 답글 버튼
$(document).on('click', '.reply-toggle', function() {
    var commentBox = $(this).closest('.comment-box');
    var replyForm = commentBox.find('.reply-form');
    
    // 다른 수정 폼과 답글 폼은 닫기
    $('.comment-edit-form').remove();
    $('.reply-form').not(replyForm).hide();
    
    replyForm.toggle();
});

//삭제 버튼 
$(document).on('click', '.delete-comment', function() {
    var commentSeq = $(this).data('comment-seq');
    
    if (confirm('정말로 댓글을 삭제하시겠습니까?')) {
        $.ajax({
            url: '${pageContext.request.contextPath}/board/deleteComment.do',
            type: 'POST',
            data: {
                commentSeq: commentSeq
            },
            success: function(response) {
                if (response === 'Success') {
                    alert('댓글이 삭제되었습니다.');
                    location.reload();
                } else {
                    alert('댓글 삭제에 실패했습니다.');
                }
            },
            error: function() {
                alert('댓글 삭제에 실패했습니다.');
            }
        });
    }
});
//수정 버튼 
function updateComment(btn) {
    var form = $(btn).closest('form');
    var commentSeq = form.find('input[name="commentSeq"]').val();
    var editedContent = form.find('textarea[name="editedContent"]').val();

    $.ajax({
        url: '${pageContext.request.contextPath}/board/editComment.do',
        type: 'POST',
        data: {
            commentSeq: commentSeq,
            editedContent: editedContent
        },
        success: function(response) {
            if (response === 'Success') {
                alert('댓글이 수정되었습니다.');
                location.reload();
            } else {
                alert('댓글 수정에 실패했습니다.');
            }
        },
        error: function() {
            alert('댓글 수정에 실패했습니다.');
        }
    });
}

function cancelEdit(btn) {
    var commentBox = $(btn).closest('.comment-box');
    commentBox.find('.comment-edit-form').remove();
    commentBox.find('.post-content').show();
}

//수정 버튼
$(document).on('click', '.edit-comment', function() {
    var commentBox = $(this).closest('.comment-box');
    var commentSeq = $(this).data('comment-seq');
    var commentContent = commentBox.find('.post-content').text().trim();
    
    // 이미 수정 폼이 열려있는 경우 무시
    if (commentBox.find('.comment-edit-form').length > 0) {
        return;
    }
    
    // 다른 수정 폼과 답글 폼은 닫기
    $('.comment-edit-form').not(commentBox.find('.comment-edit-form')).remove();
    $('.reply-form').not(commentBox.find('.reply-form')).hide();
    
    var editForm = '<div class="comment-edit-form">' +
                   '<form onsubmit="return false;">' +
                   '<input type="hidden" name="commentSeq" value="' + commentSeq + '">' +
                   '<textarea name="editedContent">' + commentContent + '</textarea>' +
                   '<button type="button" onclick="updateComment(this)">저장</button>' +
                   '<button type="button" onclick="cancelEdit(this)">취소</button>' +
                   '</form>' +
                   '</div>';
    commentBox.find('.post-content').hide().after(editForm);
});





document.addEventListener('DOMContentLoaded', function() {
    $('#commentForm').submit(function(event) {
        event.preventDefault(); // Prevent the default form submission
		
        var paramseq = ${param.seq};
        var user = ${sessionScope.seqUser};

        $.ajax({
            url: '/account/board/add-comment.do', // Use the form's action attribute or default
            type: 'POST',
            data: {
                paramSeq: paramseq,
                user: user,
                comment: document.getElementById('commentContent').value
            },
            success: function(response) {
                alert('댓글이 등록되었습니다.');
                $('#commentContent').val(''); // Clear the textarea after successful submission
            },
            error: function() {
                alert('댓글 등록에 실패했습니다.');
            }
        });
    });
    
    
    
    
    
        replyToggles.forEach(function(toggle) {
        toggle.addEventListener('click', function() {
    const replyToggles = document.querySelectorAll('.reply-toggle');
            const replyForm = this.parentNode.parentNode.nextElementSibling.nextElementSibling;
            replyForm.style.display = replyForm.style.display === 'none' ? 'block' : 'none';
        });
    });
    
        
        
        
        
        
});

function addComment() {
    var form = $('.comment-form form');
    var seqPost = form.find('[name="seqPost"]').val();
    var seqUser = form.find('[name="seqUser"]').val();
    var content = form.find('textarea[name="commentContent"]').val();

    if (seqUser === '') {
        alert("로그인이 필요합니다.");
        return;
    }

    // Perform AJAX request with jQuery
    $.ajax({
        url: '/account/board/add-comment.do',
        type: 'POST',
        data: {
            seqPost: seqPost,
            seqUser: seqUser,
            content: content
        },
        success: function() {
            alert('댓글이 등록되었습니다.');
            // Clear the form instead of reloading the page
            form.find('textarea[name="commentContent"]').val('');
        },
        error: function() {
            alert('댓글 등록에 실패했습니다.');
        }
    });
}


function addReplyComment(btn) {
    var form = $(btn).closest('form');
    var seqComments = form.find('input[name="seqComments"]').val();
    var seqUser = form.find('input[name="seqUser"]').val();
    var content = form.find('textarea[name="content"]').val();

    if (seqUser === '') {
        alert("로그인이 필요합니다.");
        return;
    }

    $.ajax({
        url: '${pageContext.request.contextPath}/board/addReplyComment.do',
        type: 'POST',
        data: {
            seqComments: seqComments,
            seqUser: seqUser,
            content: content
        },
        success: function(response) {
            if (response === "Success") {
                alert('답글이 등록되었습니다.');
                location.reload();
            } else {
                alert('답글 등록에 실패했습니다.');
            }
        },
        error: function() {
            alert('답글 등록에 실패했습니다.');
        }
    });
}



 
	//게시글 추천수
	$(".post-actions span:nth-child(1)").click(function() {
		postlike(${post.seqBoard});
	});
	
	$(".post-actions span:nth-child(2)").click(function() {
		postdislike(${post.seqBoard});
	});
	
	
	function postlike(seqBoard) {
	  let url;
	  switch (seqBoard) {
	    case 1:
	      url = "/account/board/noticeBoard.do";
	      break;
	    case 2:
	      url = "/account/board/freeBoard.do";
	      break;
	    case 3:
	      url = "/account/board/reportBoard.do";
	      break;
	    case 4:
	      url = "/account/board/attendanceBoard.do";
	      break;
	  }
	  $.ajax({
	    type: 'POST',
	    url: url,
	    data: {
		seq: ${post.seq},
		type: 'like'
	    },  	  	
	    success: function() {
	    	console.log("like완료");
	    	var temp = document.getElementById('post-like').innerHTML;
	    	var numericTemp = Number(temp) + 1;
	    	document.getElementById('post-like').innerHTML = numericTemp;
	    },
	    error: function(xhr, status, error) {
	      console.error("AJAX 요청 실패:", error);
	    }
	  });
	}
	
	
	function postdislike(seqBoard) {
 	  let url;
 	  switch (seqBoard) {
 	    case 1:
 	      url = "/account/board/noticeBoard.do";
 	      break;
 	    case 2:
 	      url = "/account/board/freeBoard.do";
 	      break;
 	    case 3:
 	      url = "/account/board/reportBoard.do";
 	      break;
 	    case 4:
 	      url = "/account/board/attendanceBoard.do";
 	      break;
 	  }
	  $.ajax({
	    type: 'POST',
	    url: url,
	    data: {
			seq: ${post.seq},
			type: 'dislike'
	    },  	  	
	    success: function() {
	    	console.log("Dislike완료");
	    	var temp = document.getElementById('post-dislike').innerHTML;
	    	var numericTemp = Number(temp) + 1;
	    	document.getElementById('post-dislike').innerHTML = numericTemp;
	    },
	    error: function(xhr, status, error) {
	      console.error("AJAX 요청 실패:", error);
	    }
	  });
 	}
   	
    
    </script>
</body>
</html>
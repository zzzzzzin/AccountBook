<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/account/asset/css/style.css">
<style>
	
</style>
</head>
<body>
<%@include file="/WEB-INF/views/inc/header.jsp"%>

    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar">
            <div class="logo">이미지</div>
            <nav>
              <ul>
                <li><a href="#"><i class="fas fa-home"></i> 공지사항</a></li>
                <li><a href="#"><i class="fas fa-tachometer-alt"></i> 자유게시판</a></li>
                <li><a href="#"><i class="fas fa-shopping-cart"></i> 건의 사항 게시판</a></li>
                <li><a href="#"><i class="fas fa-box-open"></i> 신고 게시판</a></li>
                <li><a href="#"><i class="fas fa-box-open"></i> 출석 게시판</a></li>
              </ul>
            </nav>
          </div>
    
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            
            <!-- Navbar Start -->
            <header id="navheader">
                <nav>
                  <div class="logo"></div>
                  <ul>
                    <li class="content1"><a href="#">게시판</a></li>
                    <li class="content2"><a href="#">대시보드</a></li>
                    <li class="content3"><a href="#">카드추천</a></li>
                    <li class="content4"><a href="#">로그아웃</a></li>
                  </ul>
                </nav>
              </header>
        
            <!-- Navbar End -->
        <!-- Content End -->
        <div id="fakecontent">
            <div id='calendar'></div>

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        </div>
        
    </div>

    <div class="modal fade" id="eventProduceModal" tabindex="-1"
    aria-labelledby="eventProduceModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modalBackground">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="eventProduceModalLabel">가게부 추가</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <div class="container">
                                <div id="color-selector">
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="eventModalStart" class="col-form-label">날짜</label> <input type="datetime-local" id="eventModalStart"
                                class="form-control" placeholder="datetime-local input">
                        </div>
                        <div class="mb-3">
                            <label for="eventModalTitle" class="col-form-label">내용</label> <textarea
                                type="text" class="form-control" id="eventModalTitle"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="eventModalTitle" class="col-form-label">사용처</label> <input
                                type="text" class="form-control" id="eventModalTitle">
                        </div>
                        <div class="mb-3">
                            <label for="eventModalSelect" class="col-form-label">카테고리</label>
                            <select class="form-select" aria-label="Default select example"
                                id="eventModalSelect">
                                <option selected>카테고리</option>
                                <option value="1">개인일정</option>
                                <option value="2">공유일정</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="eventModalSelect" class="col-form-label">지불 방식</label>
                            <select class="form-select" aria-label="Default select example"
                                id="eventModalSelect">
                                <option selected>지불 방식</option>
                                <option value="1">카드</option>
                                <option value="2">현금</option>
                            </select>
                        </div>
                        <div class="mb-3" id="onerow">
                            <div for="eventModalEnd" class="col-form-label" id="onrowlabel">금액</div>
                            <div id="onerowinput">
                                <select class="form-select selectSize" aria-label="Default select example"
                                    id="eventModalSelect">
                                    <option selected>+/-</option>
                                    <option value="+">+</option>
                                    <option value="-">-</option>
                                </select>
                                <input type="number" class="form-control" id="eventModalIoc">
                                <input type="checkbox" id="fixedexpense">
                            </div>
                        </div>
                        <div class="mb-3" id="fixeddate">
                            <label for="eventModalStart" class="col-form-label">고정 지출 날짜</label> <input type="datetime-local" id="eventModalStart"
                                class="form-control" placeholder="datetime-local input">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary"
                        data-bs-dismiss="modal">취소</button>
                    <button type="button" class="btn btn-primary" id="btnEventProduce">완료
                        </button>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js'></script>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/5.11.0/main.min.css' rel='stylesheet' />
    <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/5.11.0/main.min.js'></script>
    
    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script>

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var checkbox = document.getElementById('fixedexpense');
    var fixedDateDiv = document.getElementById('fixeddate');
    var eventProduceModal = document.getElementById('eventProduceModal');

// Reset the checkbox and hide elements when the modal is about to be shown
eventProduceModal.addEventListener('show.bs.modal', function () {
    checkbox.checked = false; // Uncheck the checkbox
    fixedDateDiv.style.display = 'none'; // Hide the date input
});

    checkbox.addEventListener('change', function() {
        if (checkbox.checked) {
            fixedDateDiv.style.display = 'block'; // Show the fixed date input
        } else {
            fixedDateDiv.style.display = 'none'; // Hide the fixed date input
        }
    });

 var calendar = new FullCalendar.Calendar(calendarEl, {
        editable: true,
		eventClick: function(info) {
		    info.jsEvent.preventDefault();
			var container = document.getElementById("editEventModal");
			var modal = new bootstrap.Modal(container);
			$('#editEventModalTitle').val(info.event.title);
			$('#editEventModalStart').val(moment(info.event.start).format('YYYY-MM-DDTHH:mm'));
			$('#editEventModalEnd').val(moment(info.event.end).format('YYYY-MM-DDTHH:mm'));
			$('#editEventModalColor').val(info.event.backgroundColor);
			$('#editEventModalLoc').val(info.event.extendedProps.loc);
			$('#editEventModalContent').val(info.event.extendedProps.content);
        	modal.show();

			$('#deleteEventBtn').on('click', function() {
				if(window.confirm('일정을 삭제하시겠습니까?'))
				info.event.remove();
				modal.hide();
			});
			$("#btnEventProduce").on('click', function(event) {
				var start = $('#eventModalStart').val();
				var end = $('#eventModalEnd').val();
				alert();
			});
		},
		
		eventMouseEnter: function (info) {
			var popover = new bootstrap.Popover(info.el, {
				title: $('<div />', {
					text: info.event.title
				}).css({
					'color': info.event.backgroundColor != '' ? info.event.backgroundColor : '#3788D8',
					'font-weight': 'bold',
					'font-size': '20px'
				}),
			content: $('<div />', {
				class: 'popoverInfoEvent'
        		}).append('<strong>카테고리:</strong> ' + '<br>')
        .append('<strong>시간:</strong> ' + getDisplayEventDate(info.event) + '<br>')
        .append('<strong>내용:</strong> ' + info.event.extendedProps.content),
			trigger: 'hover',
			delay: { show: 400, hide: 300 },
			placement: 'top',
			html: true,
			container: 'body'
			});
			setTimeout(function () {
			popover.dispose();
			}, 1500); 
		},
		dateClick: function(info) {
        var container = document.getElementById("eventProduceModal");//
        var modal = new bootstrap.Modal(container);
        
        modal.show();
      },
      select: function(info) {
        
      },
	  locale: 'ko',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      initialDate: new Date(),
      navLinks: true, // can click day/week names to navigate views
    //   businessHours: true, // display business hours
      editable: true,
      selectable: true,
      /* events: [
   		   $.ajax({
   			type: 'get',
   			url: '/plan/listevent.do',
   			dataType: 'json',
   			success: function(result){
   				result.forEach(obj =>{
   					calendar.addEvent({
   						title: obj.title,
   						start: obj.start,
   						end: obj.end,
   						color: obj.colSeq,
   						extendedProps: {
			   				loc: obj.loc,
			   				content: obj.content
   						}
   					})
   				})
  			},
   			error: function(a,b,c){
   				console.log(a,b,c);
   			}
   		  }) 
   	  ] */
    });
    calendar.render();
});

document.addEventListener('DOMContentLoaded', function() {
   

    
});


    </script>
</body>
</html>


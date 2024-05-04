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
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Libraries Stylesheet -->
</head>
<style>

   #periodcheck{
        display: flex;
        justify-content: center;
        margin: auto;
    }
    #periodcheck button{
        margin: 5px;
    }

    #chart01{

        display: flex;
        flex-direction: row;
        justify-content: center;
    }

    #pieblock{
        display: flex;
    }

    #piepie{
        float: left;
    }
    #piepie2{
        float: left;
    }
    #customMsg{
        margin: 50px;
        width: 100px;
        height: 100px;
        background-color: aqua;
        flex: 0 0 auto; /* Does not grow, does not shrink, auto basis */
        margin-left: 10%; /* Pushes it to the right */
        width: 100px;
        height: 100px;
        text-align: center;
        align-items: center;
        justify-content: center;
        display: flex;
    }

    
    #fakecontent{
    }

    #firstrow{
        display: flex;
        justify-content: center;
        align-items: center; 
    }

    #secondrow{
        display: flex;
        justify-content: center;
        margin-top: 50px;
    }

    #thridrow{
        display: flex;
        justify-content: center;
    }
    #monthgoal{
        width: 300px;
        height: 100px;
        background-color: aqua;
        margin-right: 30px;
        align-items: center;
        justify-content: center;
        display: flex;
    }
    #currentsituation{
        width: 300px;
        height: 100px;
        background-color: black;
        align-items: center;
        justify-content: center;
        display: flex;
    }

    #newscontent{
        width: 500px;
        height: 100px;
        margin-top: 100px;
        border: 1px solid black;
        align-items: center;
        justify-content: center;
        display: flex;
        
    }

    .sidebar {
            width: 200px;
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


    /* nav header css */
    #navheader {
        
    }

    #navheader {
        background-color: #f1f1f1;
        padding: 20px;
      }
      
      #navheader nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      
      #navheader .logo {
        width: 100px;
        height: 50px;
        background-color: #ddd;
        margin-right: 20px;
      }
      
      #navheader nav ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        width: 100%;
        justify-content: center;
      }
      
      #navheader nav li {
        margin: 0 20px;
      }
      
      .content1 {
        margin-left: 100px;
      }
      
      .content2 {
        margin-left: 300px;
      }

      .content3 {
        margin-left: 300px;
      }
      
      .content4 {
        margin-left: 300px;
        background-color: red;
      }
      
      #navheader nav a {
        color: #333;
        text-decoration: none;
        font-weight: bold;
      }
      
      #navheader nav a:hover {
        color: #000;
      }

      #chartLegend{
        display: flex;
        justify-content: center;  
        align-items: center;      
        width: 100%;              
        flex-wrap: wrap;  
        margin-top: 50px;
      }
      /* ---calendar css start */
      #onerow {
        display: flex;
        justify-content: center; 
        align-items: center; 
        width: 100%; 
        margin: auto; 
      }

    #onrowlabel {
        width: 50px; 
        height: 50px; 
        display: flex;
        justify-content: center; 
        align-items: center; 
        margin-right: 10px; 
        text-align: center; 
    }

#onerowinput {
    display: flex;
    align-items: center; 
    width: 100%; 
}

#eventModalSelect, #eventModalIoc {
    flex: 1; 
}

#onerowinput #eventModalSelect{
    width: 50px;
}
.form-select, .form-control {
    margin: 0 5px; 
}
.selectSize{
    width: 100px ;
}

   .abovestat{
        display: flex;
        align-items: center;
    }

    .abovestat div{
        margin-left: 10px;
        margin-bottom: 10px;
    }

    #spendstat{
        margin-top: 10px;
    }

    #aboverow {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: right;
    width: 100%; 
    }
    
    .right-icon{
        width: auto;
        height: 100%;
    }



#spendstat :nth-child(2){
    color: rgb(244, 0, 0);
}

#incomestat :nth-child(2){
    color: rgb(0, 76, 216);
}

#bottomrow{
    display: flex;
    flex-direction: row;
    align-items: center; 
    justify-content: flex-start; 
    width: 100%; 
}

.right-icon i {
    font-size: 24px;  
    width: 30px;      
    height: 30px; 
    margin: 10px;    
}

#wishlist {
    padding: 20px;
    background: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    margin: 10px;
    border: 1px solid black;
    width: 40%;
    
}

#wishlist h3 {
    color: #333;
}

#wishlist form {
    margin-bottom: 10px;
}

#wishlist input[type="text"] {
    padding: 8px;
    margin-right: 4px;
    border: 1px solid #ccc;
    border-radius: 4px;
    width: 70%;
}

#newitembutton{
    width: 30%;
}

#wishlist button {
    padding: 8px 16px;
    background-color: #009CFF;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

#wishlist button:hover {
    background-color: #007dca;
}

#wishListItems li {
    list-style: none;
    margin-top: 8px;
    background: white;
    padding: 8px;
    border: 1px solid #ddd;
    border-radius: 4px;
}

#bottomrow{
    display: flex;
    justify-content: center;
    align-items: baseline;
    padding: 20px;
}

#wishlist{
    width: 50%;
}

#wishlistrow1{
    display: flex;
    justify-content: space-between;
    flex-direction: row;
}

#wishlistrow1 h3{
    margin-right: 10px;
}

#addWishItemtitle{
    display: flex;
    justify-content: center;
}

#transcontent {
    border: 1px solid #ccc;
    width: 100%;
    display: flex;
    margin: 10px 0;
    background-color: #ffffff;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    border-radius: 8px;
    justify-content: center;
    align-items: center;
    
}
#thismonthstat {
    flex-grow: 1; 
    font-weight: bold;
    padding: 20px;
    background: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    border: 1px solid black;
    width: 40%;
}

.transin {
    flex: 1;
    padding: 10px;
    display: flex;
    align-items: center;
}

.frontback{
    margin: 10px;
}

#listdelbutton :hover{
    cursor: pointer;
}

#wishlistrow2{
    display: flex;
    justify-content: space-between;
    margin-top: 15px;
}

.categorylist{
    border: 1px solid black;
    width: 50%;
    height: 30px;
    margin: 5px;
}

#categorymodalbody{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
}

.categorylistselector{
    display: flex;
    border: 1px solid #CCC;
    background-color: #F3f6f9;
    width: auto;
    margin: 5px;
    justify-content: center;
    padding: 5px;
    border-radius: 5px;
}

.categorylistselector:hover{
    cursor: pointer;
    box-shadow: 0 4px 4px rgba(0,0,0,0.1);
}

#searchbar{
    display: none;
}
#totalbody{
	background-color: #FFFFFF 
}    
    

    <%@include file="/WEB-INF/views/inc/asset.jsp"%>
      

</style>

<body id="totalbody">
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
        <%@include file="/WEB-INF/views/inc/account-sidebar.jsp"%>
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
        <div id="fakecontent">
            <div id="aboverow">
                <div><input type="text" id="searchbar"></div>
                <div class="right-icon" id="searchicon"><i class="fa-solid fa-magnifying-glass"></i></div> 
                <div class="right-icon" id="categoryselector"><i class="fa-solid fa-list-check"></i></div> 
            </div>
            <div id='calendar'></div>
            <div id="bottomrow">
                <div id="thismonthstat">
                    <div class="abovestat" id="spendstat">
                        <div>이번달 지출:</div>
                        <div>$30000</div>
                    </div>
                    <div class="abovestat" id="incomestat">
                        <div>이번달 수입:</div>
                        <div>$20000</div>
                    </div>
                </div>
                <div id="wishlist">
                    <div id="wishlistrow1">
                        <h3>Wish List</h3>
                        <div id="addWishItemtitle">
                            <button id="addrightnow">Add Item</button>
                        </div>
                    </div>
                    <div id="wishlistrow2">
                        <input type="text" id="newItemInput" placeholder="Type and press enter" style="display: none;">
                        <button id="newItemButton" style="display: none">추가하기</button>
                    </div>
                    <div id="wishListItems">
                        
                    </div>
                </div>
            </div>
        <!-- Back to Top -->
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

<div class="modal fade" id="categorymodal" tabindex="-1"
    aria-labelledby="eventProduceModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modalBackground">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="eventProduceModalLabel">카테고리 선택</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
                </div>
                <div class="modal-body" id="categorymodalbody">


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
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    <script>

    function openEventModal() {
        var modal = new bootstrap.Modal(document.getElementById("eventProduceModal"));
        // Clear previous data in the modal or set defaults
        document.getElementById('eventModalStartDate').value = new Date().toISOString().slice(0, 16); // Set to current date and time
        document.getElementById('eventModalContent').value = '';
        document.getElementById('eventModalUsage').value = ''; // Corrected for unique ID
        document.getElementById('eventModalCategory').selectedIndex = 0; // Resets the category dropdown, corrected ID
        document.getElementById('eventModalPaymentMethod').selectedIndex = 0; // Resets the payment method dropdown, corrected ID
        modal.show();
    }



            
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var checkbox = document.getElementById('fixedexpense');
        var fixedDateDiv = document.getElementById('fixeddate');
        var eventProduceModal = document.getElementById('eventProduceModal');
        var addwishlistnow = document.getElementById('addrightnow');
        var categoryselector = document.getElementById('categoryselector')
        var categorymodalbody = document.getElementById('categorymodalbody')

        
        
        // 카테고리 선택
        const categories = [
        "SNS수입", "건강", "경조사", "교육", "교통", "구독료", "금융수입", "급여", "기부금", "기타",
        "더치페이", "로열티", "문화생활", "미용", "보험금", "부동산수입", "부업", "사업수입", "상속", "상여금",
        "생활용품", "세금", "쇼핑", "수수료", "숙박", "아르바이트", "앱테크", "여가", "여행", "용돈",
        "유흥", "육아", "음식", "이자", "자동차", "장학금", "저축", "주거", "카페", "통신"
    ];
        console.log(categories)
        categoryselector.addEventListener('click', function() {
            var modal = new bootstrap.Modal(document.getElementById("categorymodal"));

            if (categorymodalbody.children.length <= 0) {
                categories.forEach(category => {
                    var cate = document.createElement('div');
                    console.log(category)
                    cate.className = 'categorylistselector';
                    cate.innerHTML = '<div>' + category + '</div>';
                    categorymodalbody.appendChild(cate);
                });
            }


            modal.show();
        })

        // 검색 기능
        var searchicon = document.getElementById('searchicon');
        var searchbar = document.getElementById('searchbar');
        searchicon.onclick = function() {
            if (searchbar.style.display === 'none') {
                searchbar.style.display = 'block';
                searchbar.focus();
            } else {
                searchbar.style.display = 'none';
            }
        };

        

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
        const addForm = document.getElementById('addWishItemForm');
        const wishList = document.getElementById('wishListItems');
        const wishInput = document.getElementById('wishInput');

        const wishlistcheckbox = document.getElementById('addcheckbox');
        console.log(wishlistcheckbox);
        
        wishlistcheckbox.addEventListener('change', function() {
            if (this.checked) {
                console.log('Checkbox is checked');
                openEventModal();
            }
        });
       
    })


    document.addEventListener('DOMContentLoaded', function() {
        const addButton = document.getElementById('addrightnow');
        const newItemInput = document.getElementById('newItemInput');
        const wishList = document.getElementById('wishListItems');
        const newItemButton = document.getElementById('newItemButton');
        const cbcbbox = document.getElementById('addcheckbox');

        // Toggle input field visibility and focus when the button is clicked
        addButton.onclick = function() {
            if (newItemInput.style.display === 'none') {
                newItemInput.style.display = 'block';
                newItemButton.style.display = 'block';
                newItemInput.focus();
            } else {
                newItemInput.style.display = 'none';
                newItemButton.style.display = 'none';
            }
        };

        // Function to add a new transaction item to the wish list
        function addNewTransContent(itemText) {
            const transContent = document.createElement('div');
            transContent.id = 'transcontent';
        
            const checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.className = 'frontback';
            checkbox.id = 'addcheckbox';

            const transDesc = document.createElement('div');
            transDesc.className = 'transin';
            transDesc.id = 'transdate';
            transDesc.textContent = itemText;

            const deleteBtn = document.createElement('div');
            deleteBtn.className = 'frontback';
            deleteBtn.id = 'listdelbutton';
            deleteBtn.innerHTML = '<div id="listdelbutton" class="frontback"><i class="fa-solid fa-xmark"></i></div>';
            deleteBtn.onclick = function() {
                wishList.removeChild(transContent);
            };

            transContent.appendChild(checkbox);
            transContent.appendChild(transDesc);
            transContent.appendChild(deleteBtn);

            wishList.appendChild(transContent);
        }

        newItemInput.addEventListener('keypress', function(event) {
            if (event.key === 'Enter') {
                event.preventDefault();
                const text = newItemInput.value.trim();
                if (text) {
                    addNewTransContent(text);
                    newItemInput.value = ''; 
                    newItemInput.style.display = 'none'; 
                    newItemButton.style.display = 'none';  
                }
            }
        });
        newItemButton.addEventListener('click', function() {
            const text = newItemInput.value.trim();
            if (text) {
                addNewTransContent(text);
                newItemInput.value = ''; 
                newItemInput.style.display = 'none'; 
                newItemButton.style.display = 'none';  
            }
        });


        // Event delegation for dynamically added checkboxes
        wishList.addEventListener('change', function(event) {
            // Check if the event target is a checkbox with the class 'frontback'
            if (event.target.type === 'checkbox' && event.target.classList.contains('frontback')) {
                // Check if the checkbox is checked
                if (event.target.checked) {
                    console.log('Checkbox is checked');
                    var container = document.getElementById("eventProduceModal");//
                    var modal = new bootstrap.Modal(container);
                    modal.show();
                    event.target.checked=false;
                }
            }
        });

        
    });

    </script>
</body>

</html>

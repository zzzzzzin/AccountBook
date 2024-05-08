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
      		<form method = "GET" id="accountSearchForm" action="/account/account/list.do">
                <div class="right-icon" id="searchicon"><i class="fa-solid fa-magnifying-glass"></i></div> 
                <div id="searchbar" >
                	<input type="text" name="word" value="${map.word}" placeholder="내용 or 사용처">
                	<input type="submit" value="검색">
                </div>
            </form>    
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
                                type="text" class="form-control" id="eventModalcontent"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="eventModalTitle" class="col-form-label">사용처</label> <input
                                type="text" class="form-control" id="eventModaluseloc">
                        </div>
                        <div class="mb-3">
                            <label for="eventModalSelect" class="col-form-label">카테고리</label>
                            <select class="form-select modalselectcategory" aria-label="Default select example"
                                id="eventModalSelect">
                                <option selected>카테고리</option>
                                <option value="1">개인일정</option>
                                <option value="2">공유일정</option>
                            </select>
                        </div>

                        <div class="mb-3">
                            <label for="eventModalSelect" class="col-form-label">지불 방식</label>
                            <select class="form-select modalmethodofpayment" aria-label="Default select example"
                                id="eventModalSelect">
                                <option selected>지불 방식</option>
                                <option value="1">카드</option>
                                <option value="2">현금</option>
                            </select>
                        </div>
                        <div class="mb-3" id="onerow">
                            <div for="eventModalEnd" class="col-form-label" id="onrowlabel">금액</div>
                            <div id="onerowinput">
                                <select class="form-select selectSize modalincreasedecrease" aria-label="Default select example"
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
					<button type="button" class="btn btn-primary" id="deleteEventBtn">삭제</button>
					<button type="button" class="btn btn-primary" id="editEventBtn">수정</button>
					<button type="button" class="btn btn-primary" id="produceEventBtn">생성</button>
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
    var delRequest = null;
	var addRequest = null;
	var editRequest = null;
   	var categories = [];
    var colors = {};
    
    var editbutton = document.getElementById('editEventBtn');
    var delbutton = document.getElementById('deleteEventBtn');
    var procbutton = document.getElementById('produceEventBtn');
    <c:forEach items="${cList}" var = "dto">
	categories.push('${dto.acName}');
	</c:forEach>
   console.log(categories); 
   
   
   var cardlist = [];
   	<c:forEach items="${cardlist}" var = "dto">
		cardlist.push('${dto.paymentMethod}, ${dto.paymentMethod} ${dto.alias}:${dto.cardNumber}');
	</c:forEach>
	
	// 미리 정의된 색상 팔레트
	const colorPalette = [
		'#36A2EB', '#FF6384', '#4BC0C0', '#FC9D3F', '#9966FF', '#FFCD56', '#C9CBCF', '#F9F871', '#A0F48B', '#A3459B',
	    '#E17AA7', '#EEE8A9', '#265E58', '#F47558', '#D25F9C', '#9B61A3', '#00524A', '#655E96', '#3E567A', '#2F4858',
	    '#DD6C41', '#A57A11', '#647E17', '#007A3E', '#007165', '#96525D', '#FFE3E9', '#BFA5A8', '#53D0B9', '#6FDEAA',
	    '#97EA96', '#C6F381', '#F6746C', '#CA638D', '#896095', '#4D587F', '#C7B1E6', '#FAEAFF', '#65BAA9', '#FFCA57'
	];
	
	// colors 객체에 각 카테고리에 고유한 색상 할당
	categories.forEach((categoryName, index) => {
	    colors[categoryName] = colorPalette[index % colorPalette.length];
	});
	/* console.log(colors.value('주거')); */
	
	function populatePaymentMethodSelect() {
        paymentMethodSelect.innerHTML = ''; // Clear existing options
        cardlist.forEach(function(card) {
            var parts = card.split(',');
            var option = document.createElement('option');
            option.value = parts[0]; // Assuming the first part is the value
            option.textContent = parts[1]; // Assuming the second part is the user-friendly name
            paymentMethodSelect.appendChild(option);
        });
    }
	
	
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
    //모달 소환시 입력 무 (시작)
    function clearModalInputs() {
        document.getElementById('eventModalcontent').value = '';
        document.getElementById('eventModalStart').value = '';
        if (document.getElementsByClassName('modalselectcategory').length > 0) {
            document.getElementsByClassName('modalselectcategory')[0].selectedIndex = 0;
        }
        if (document.getElementsByClassName('modalmethodofpayment').length > 0) {
            document.getElementsByClassName('modalmethodofpayment')[0].selectedIndex = 0;
        }
        if (document.getElementsByClassName('modalincreasedecrease').length > 0) {
            document.getElementsByClassName('modalincreasedecrease')[0].selectedIndex = 0;
        }
        document.getElementById('eventModaluseloc').value = '';
        document.getElementById('eventModalIoc').value = '';
        document.getElementById('fixedexpense').checked = false; 
    }
    //모달 소환시 입력 무 (끝)


            
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var checkbox = document.getElementById('fixedexpense');
        var fixedDateDiv = document.getElementById('fixeddate');
        var eventProduceModal = document.getElementById('eventProduceModal');
        var addwishlistnow = document.getElementById('addrightnow');
        var categoryselector = document.getElementById('categoryselector')
        var categorymodalbody = document.getElementById('categorymodalbody')
        var categorySelector = document.getElementById('eventModalSelect'); 
        var paymentMethodSelect = document.querySelector('.modalmethodofpayment');
        
        
        function populatePaymentMethodSelect() {
            // Assuming we want to keep the existing options and append new ones, start after the default options
            // Remove all dynamically added options first, assuming they have a class 'dynamic-option'
            var existingOptions = paymentMethodSelect.querySelectorAll('.dynamic-option');
            existingOptions.forEach(function(option) {
                option.remove();
            });

            // Append new options from cardlist
            cardlist.forEach(function(card) {
                var parts = card.split(',');
                var option = document.createElement('option');
                option.classList.add('dynamic-option'); // Mark it as dynamically added for future updates
                option.value = parts[0]; // Assuming the first part is the value
                option.textContent = parts[1]; // Assuming the second part is the user-friendly name
                paymentMethodSelect.appendChild(option);
            });
        }
        
        
        
        // 카테고리 선택 시작
        

    function populateCategorySelector() {
            categorySelector.innerHTML = ''; // Clear existing options
            categories.forEach(function(category) {
                var option = document.createElement('option');
                option.value = category;
                option.textContent = category;
                categorySelector.appendChild(option);
            });
        }

        populateCategorySelector();

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
        //카테고리 선택 끝
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
	    //검색 기능 끝
        

    // 고정 지출 시작
    eventProduceModal.addEventListener('show.bs.modal', function () {
        checkbox.checked = false; // Uncheck the checkbox
        fixedDateDiv.style.display = 'none'; // Hide the date input
        populatePaymentMethodSelect();

    });

        checkbox.addEventListener('change', function() {
            if (checkbox.checked) {
                fixedDateDiv.style.display = 'block'; // Show the fixed date input
            } else {
                fixedDateDiv.style.display = 'none'; // Hide the fixed date input
            }
        });
    //고정 지출 끝

    //항목 추가 시작
    document.getElementById('produceEventBtn').addEventListener('click', function() {
        var content = document.getElementById('eventModalcontent').value;
        var start = document.getElementById('eventModalStart').value;
        var category = document.getElementsByClassName('modalselectcategory')[0].value;
        var useLocation = document.getElementById('eventModaluseloc').value;
        var paymentMethod = document.getElementsByClassName('modalmethodofpayment')[0].value;
        var amountindicator = document.getElementsByClassName('modalincreasedecrease')[0].value;
        var amount = document.getElementById('eventModalIoc').value;
        var isFixedExpense = document.getElementById('fixedexpense').checked;
        
        console.log('here')
        editbutton.style.display='none';
        delbutton.style.display='none';
        /* var isFixedperiod = document.getElementById('fixedexpense').checked;  */
        
        // Validate the inputs
        if (!content || !start || !category || !amount) {
            alert('모든 필수 필드를 입력해주세요.'); // Alert if any required field is missing
            return;
        }
        console.log(content, start, category, useLocation, paymentMethod,amountindicator, amount, isFixedExpense);

        // Create a new event object
        var event = {
            title: category,
            start: start,
            allDay: true,
            color: colors[category], 
            extendedProps: {
                useLocation: useLocation,
                content: content,
                category: category,
                paymentMethod: paymentMethod,
                amount: amount,
                amountindicator: amountindicator,
                isFixedExpense: isFixedExpense
            }
        };

        // Add the event to the calendar
        calendar.addEvent(event);
        
        if (addRequest) {
			addRequest.abort();
		}
        
        addRequest = $.ajax({
        	type: 'post',
        	url: '/account/account/calendar.do',
        	data:{
        		start: start,
        		useLocation: useLocation,
        		content: content,
        		category: categories.indexOf(category),
        		paymentMethod: paymentMethod,
        		amount: amount,
        		amountindicator: amountindicator,
        		isFixedExpense: isFixedExpense
        		/* isFixedperiod: isFixedperiod */
        	}
        })
        

        // Optionally clear the modal inputs
        document.getElementById('eventModalcontent').value = '';
        document.getElementById('eventModalStart').value = '';
        Array.from(document.querySelectorAll('#eventProduceModal select')).forEach(select => select.selectedIndex = 0);
        document.getElementById('eventModaluseloc').value = '';
        document.getElementById('eventModalIoc').value = '';
        document.getElementById('fixedexpense').checked = false;

        // Hide the modal, assuming using Bootstrap's modal
        $('#eventProduceModal').modal('hide');

        // Log or handle the data as needed, e.g., send it to a server
        console.log('Event data:', event);
        // Here you can also make an AJAX call to send the data to the server
    });

    //항목 추가 끝

        

     var calendar = new FullCalendar.Calendar(calendarEl, {
            timeZone:'UTC',
            editable: true,
    		eventClick: function(info) {
                console.log('workd');
    		    info.jsEvent.preventDefault();
                var container = document.getElementById("eventProduceModal");//
                var modal = new bootstrap.Modal(container);
                
                var content = info.event.extendedProps.content;
                
                var start = info.event.start.toISOString().slice(0, 16);
                var category = info.event.extendedProps.category;
                var useLocation = info.event.extendedProps.useLocation;
                var paymentMethod = info.event.extendedProps.paymentMethod;
                var amountindicator = info.event.extendedProps.amountindicator;
                var amount = info.event.extendedProps.amount;
                var isFixedExpense = info.event.extendedProps.isFixedExpense;
                var seq = info.event.extendedProps.seq;
                var seqacc = info.event.extendedProps.seqacc;
                var seqrcc = info.event.extendedProps.seqrcc;
                
                
                console.log(seq);
                $('#eventModalcontent').val(info.event.extendedProps.content); 
                $('#eventModalStart').val(info.event.start.toISOString().slice(0, 16)); 
                $('.modalselectcategory').val(info.event.extendedProps.category);
                $('#eventModaluseloc').val(info.event.extendedProps.useLocation);
                $('.modalmethodofpayment').val(info.event.extendedProps.paymentMethod);
                $('.modalincreasedecrease').val(info.event.extendedProps.amountindicator);
                $('#eventModalIoc').val(info.event.extendedProps.amount);
                $('#fixedexpense').prop('checked', info.event.extendedProps.isFixedExpense);
                
                procbutton.style.display = 'none';
                editbutton.style.display = 'inline-block';
                delbutton.style.display = 'inline-block';
                console.log(info.event.extendedProps.paymentMethod)
            modal.show();

    			$('#deleteEventBtn').off().on('click', function() {
    				if(window.confirm('일정을 삭제하시겠습니까?')){
    					if(delRequest !== null){
    						delRequest.abort();
    					}
    				}
    				
    				delRequest = $.ajax({
    					type:'post',
    					url:'/account/account/calendardelete.do',
    					data:{
    						seq: seq
    					},
    				dataType: 'json',
	                    success: function (response) {
	                        alert('Edit successful');
	                        modal.hide();
	                        
	                    },
	                    error: function (xhr, status, error) {
	                        alert('Error: ' + xhr.responseText);
	                        modal.hide();
	                    }
    				})
    				info.event.remove();
    				modal.hide();
    			});
    			$("#editEventBtn").off().on('click', function(info) {
    			    if(confirm('항목을 수정하시겠습니까?')){
    					// 중복 실행 방지
    					if (editRequest !== null) {
    						editRequest.abort();
    					}
						
    			        editRequest = $.ajax({
    			            type:'post',
    			            url: '/account/account/calendaredit.do',
    			            data: {
    			            	start: document.getElementById('eventModalStart').value,
    	                        useLocation: document.getElementById('eventModaluseloc').value,
    	                        content: document.getElementById('eventModalcontent').value,
    	                        amount: document.getElementById('eventModalIoc').value,
    	                        amountindicator: document.getElementsByClassName('modalincreasedecrease')[0].value,
    	                        paymentMethod: document.getElementsByClassName('modalmethodofpayment')[0].value,
    	                        category: categories.indexOf(document.getElementsByClassName('modalselectcategory')[0].value),
    	                        fixed: document.getElementById('fixedexpense').checked ? '1' : '0',
    	                        seq: seq,
    	                        seqacc: seqacc,
    	                        seqrcc: seqrcc
    			            },
    			            dataType: 'json',
    	                    success: function (response) {
    	                        alert('Edit successful');
    	                        modal.hide();
    	                        calendar.refetchEvents();
    	                       
    	                    },
    	                    error: function (xhr, status, error) {
    	                        alert('Error: ' + xhr.responseText);
    	                        modal.hide();
    	                    }
    			            
    			        })
    			    }
    			});
    		},
    		
    		eventMouseEnter: function (info) {
                console.log('in')
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
            }).append('<strong>내용:</strong> ' + info.event.extendedProps.category + '<br>')
            .append('<strong>금액:</strong> '+info.event.extendedProps.amountindicator + info.event.extendedProps.amount + '<br>')
            ,
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
                console.log('dateclick',info.dateStr);
            clearModalInputs(); // Clear all modal inputs first
            var dateValue = new Date(info.dateStr);
            var localDate = new Date(dateValue.getTime() - dateValue.getTimezoneOffset() * 60000);
            var dateISOString = localDate.toISOString().slice(0, 16);
        
        document.getElementById('eventModalStart').value = dateISOString;
        
            
            var modal = new bootstrap.Modal(document.getElementById('eventProduceModal'));
            procbutton.style.display='inline-block';
            editbutton.style.display='none';
            delbutton.style.display='none';
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
          /* events:[
            {
              title: 'event 1',
              start: '2024-05-01',
            }
          ], */
          events: [
        	  $.ajax({
         			type: 'get',
         			url: '/account/account/calendarjson.do',
         			dataType: 'json',
         			success: function(result){
         				result.forEach(obj =>{
         					calendar.addEvent({
         						title: obj.category ,
         						allDay: true,
         						start: obj.start,
         						color: colors[obj.category], 
         						extendedProps: {
      			   					useLocation: obj.loc,
      			   					content: obj.content,
      			   					amount: obj.amount,
      			   					amountindicator: (obj.amountindicator==='출금'?'+':'-'),
      			   					paymentMethod : (obj.paymentMethod+'\xa0'+obj.aliasname+':'+obj.cardnumber),
      			   					category: obj.category,
      			   					fixed: obj.fixed,
      			   					fixedPeriod: obj.fixedperiod,
      			   					seq: obj.seq,
      			   					seqacc: obj.seqacc,
      			   					seqrcc: obj.seqrcc
         						}
         					})
         				})
        			},
         			error: function(a,b,c){
         				console.log(a,b,c);
         			}
         		 }) 
          ]
        });
        calendar.render();
      });

    document.addEventListener('DOMContentLoaded', function() {
        const addForm = document.getElementById('addWishItemForm');
        const wishList = document.getElementById('wishListItems');
        const wishInput = document.getElementById('wishInput');
        
        eventProduceModal.addEventListener('hidden.bs.modal', function () {
            window.location.reload();
        });

        const wishlistcheckbox = document.getElementById('addcheckbox');
        console.log(wishlistcheckbox);
        
        wishlistcheckbox.addEventListener('change', function() {
            if (this.checked) {
                console.log('Checkbox is checked');
                openEventModal();
            }
        });
       
    });

    //위시리스트
    
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
                    sendwishlist(text);
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
                sendwishlist(text);
            }
        });
        $(document).ready(function() {
            // AJAX request to fetch data as soon as the page loads
            $.ajax({
                url: '/account/account/wishlist.do', // Replace with your actual URL
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    $.each(data, function(index, item) {
                        // Access the 'productName' property of each item
                        if (item.productName) { // Ensure that productName exists
                            console.log(item.productName);
                            addNewTransContent(item.productName); // Add each product name to the wishlist
                            
                        }
                    });
                    console.log('done?');
                },
                error: function(xhr, status, error) {
                    console.error('Error fetching data:', error);
                }
            });
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
                    let content = document.getElementById('transdate').innerHTML;
                        clearModalInputs();
                        $('#eventModalcontent').val(content); 
                        console.log(content);
                    modal.show();
                    event.target.checked=false;
                }
            }
        });
	
       	function sendwishlist(text){
       	 $.ajax({
             url: '/account/account/wishlist.do', // Replace with your actual URL
             type: 'post',
             data: {
                 item: text
             },
             success: function(response) {
                 console.log('sent');
             },
             error: function(xhr, status, error) {
                 console.error('Error fetching data:', error);
             }
         });
       	}
        
    });



    </script>
</body>

</html>

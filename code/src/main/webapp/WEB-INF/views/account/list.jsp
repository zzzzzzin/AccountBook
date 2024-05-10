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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Libraries Stylesheet -->
</head>
<style>
#fakecontent {
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 100%; 
    margin: auto; 
    padding: 20px;
    background: #FFFFFF; 
}

#transcontent {
    border: 1px solid #ccc; /* Lighter border color */
    width: 100%;
    height: 100px;
    display: flex;
    margin: 10px 0;
    background-color: #ffffff; /* White background for each transaction */
    box-shadow: 0 2px 4px rgba(0,0,0,0.05); /* Soft shadow for each transaction */
    border-radius: 8px; /* Rounded corners */
}

/* .transin { */
/*     padding: 10px; */
/*     text-align: center; */
/*     display: flex; */
/*     justify-content: center; */
/*     align-items: center; */
/*     /* border-right: 1px solid #eee; */ */
/* } */

.transin:last-child {
    border-right: none; /* Remove border for the last element */
}

/* Additional styling for specific needs */


.transdate {
    font-weight: bold; /* Applying bold font style */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 5px 10px; 
    margin: 10px 10px; 
    border-radius: 10px; 
    box-shadow: inset 0 2px 4px rgba(0,0,0,0.1); 
    width: 20%;
}

.transrightbox{
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px;
  padding: 10px;
  width: 20%;
}
   #transamountplus {
    color: #6dd900;
}

#transamountminus {
    color: #ff0008;
}

#nextrow {
	display: flex;
	justify-content: space-between;
    width: 100%;
}
#leftcol{
	display: flex;
	flex-direction: column;
	width: 60%;
	margin-right: 10px;
}

#rightcol{
	width: 40%;
	margin-left: 10px;
	
}


#wishlist {
    padding: 20px;
    background: #ffffff;
    border-radius: 8px;
   	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05); 
    margin: 10px;
    border: 1px solid #ccc;
    width: 100%;
    
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

#listdelbutton :hover{
    cursor: pointer;
}

#wishlistrow2{
    display: flex;
    justify-content: space-between;
    margin-top: 15px;
}

#wishlistContent {
    border: 1px solid #ccc;
    width: 100%;
    display: flex;
    margin: 10px 0;
    background-color: #ffffff;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
    border-radius: 8px;
    justify-content: space-between;
    align-items: center;
}
.wishlistItem {
    flex: 1;
    padding: 10px;
    display: flex;
    align-items: center;
}

.frontback{
    margin: 10px;
}

#thismonthstat {
    flex-grow: 1; 
    font-weight: bold;
    padding: 20px;
    background: #ffffff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
    border: 1px solid #ccc;
    width: 100%;
    margin:10px;
}

  .abovestat{
        display: flex;
        align-items: center;
    }

    .abovestat div{
    	margin: 10px;
    }

#aboverow{
	display: flex;
	justify-content: space-between !important;
}

#aboverowrightside{
	display: flex;
	flex-direction: row;
}

.three h1 {
  font-size: 28px;
  font-weight: 500;
  letter-spacing: 0;
  line-height: 1.5em;
  padding-bottom: 15px;
  position: relative;
}
.three h1:before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 5px;
  width: 55px;
  background-color: #111;
}
.three h1:after {
  content: "";
  position: absolute;
  left: 0;
  bottom: 2px;
  height: 1px;
  width: 95%;
  max-width: 255px;
  background-color: #333;
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
        <!-- fakecontent 안에서 작성 -->
      
      	<div id="fakecontent">
      		<div id="aboverow">
      		<div id="pagetitle" class="three"><h1>목록</h1></div>
      		<div id="aboverowrightside">
	      		<form method = "GET" id="accountSearchForm">
	                <div class="right-icon" id="searchicon"><i class="fa-solid fa-magnifying-glass"></i></div> 
	                <div id="searchbar" >
	                	<input type="text" name="word" value="${map.word}" placeholder="내용 or 사용처">
	                	<input type="submit" value="검색">
	                </div>
	            </form>    
	                <div class="right-icon" id="categoryselector"><i class="fa-solid fa-list-check"></i></div> 
	            </div>
            </div>
          	<div id="nextrow">
          		<div id="leftcol"></div>
          		<div id="rightcol">
          		<div id="thismonthstat">
          			<div id="monthheader">
          				<h1 style="display: flex;"><div id="monthindicate"></div>월</h1>
          			</div>
                    <div class="abovestat" id="spendstat">
                        <div>이번달 지출:</div>
                        <div id="totalNegative">$0</div>
                    </div>
                    <div class="abovestat" id="incomestat">
                        <div>이번달 수입:</div>
                        <div id="totalPositive">$0</div>
                    </div>
                </div>
					<div id="wishlist">
                    <div id="wishlistrow1">
                        <h3>Wish List</h3>
                        <div id="addWishItemtitle">
                            <button id="addrightnow" class="purple-btn button">Add Item</button>
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
          	</div>
          
        </div>

        <!-- fakecontent 끝 -->
    </div>
    </div>

    <!-- JavaScript Libraries -->
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    
    <c:if test="${map.search == 'y'}">
		//검색 중 상태 유지
		$('input[name=word]').val('${map.word}');
	</c:if>
	var categories = [];
    var colors = {};
    
    <c:forEach items="${cList}" var = "dto">
	categories.push('${dto.acName}');
	</c:forEach>
	console.log(categories);
   

	
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
	
	function updateTransDateColor(category) {
	    var transDate = document.getElementById('transdate');
	    var color = colors[category] || "#f0f0f0"; // Default color if category is undefined
	    if (transDate) {
            var color = colors[category] || "#f0f0f0"; // Default color if category is undefined
            transDate.style.backgroundColor = color;
        } else {
            console.log('transdate element not found');
        }
	}
	

    function addTransaction(date, category, where, amount, amountIndicator, content) {
        // Create main transaction container
        const transContent = document.createElement('div');
        transContent.id = 'transcontent';

        const transDate = document.createElement('div');
        transDate.className = 'transin transdate';
        transDate.textContent = date;
        // Set the background color based on the category
        transDate.style.backgroundColor = colors[category] || "#f0f0f0"; 
        updateTransDateColor(category);
        
        const transMiddle = document.createElement('div');
        transMiddle.className = 'transmiddle';

//         const transCategory = document.createElement('div');
//         transCategory.className = 'transin';
//         transCategory.id = 'transcategory';
//         transCategory.textContent = category + '|' + where;

        const transSub = document.createElement('div');
        transSub.className = 'transsub';

		const transCategory = document.createElement('div');
		transCategory.className = 'transin'; // 클래스 추가
		transCategory.id = 'transcategory';
		transCategory.textContent = category + 	' | '; // where는 따로 추가할 예정
		
		const transWhere = document.createElement('div');
		transWhere.className = 'transin'; // 클래스 추가
		transWhere.id = 'transwhere';
		transWhere.textContent = where; // where 내용 추가

        const transDetail = document.createElement('div');
        transDetail.className = 'transin';
        transDetail.id = 'transdetail';
        transDetail.textContent = content;
        
//         const transWContent = document.createElement('div');
//         transWhere.className = 'transin';
//         transWhere.id = 'transcontent';
//         transWhere.textContent = content;

        transSub.appendChild(transCategory);
        transSub.appendChild(transWhere);
        
        transMiddle.appendChild(transSub);
        transMiddle.appendChild(transDetail);

        const transRightBox = document.createElement('div');
        transRightBox.className = 'transrightbox';

		const transAmount = document.createElement('div');
		    transAmount.className = 'transin';
		    
		    if (amountIndicator === '+') { // 입금일 때
		        transAmount.id += 'transamountplus';
		    } else if (amountIndicator === '-') { // 출금일 때
		        transAmount.id += 'transamountminus';
		    }
		    transAmount.textContent = amountIndicator + amount + '원';

		transRightBox.appendChild(transAmount);

        transContent.appendChild(transDate);
        transContent.appendChild(transMiddle);
        transContent.appendChild(transRightBox);

        document.getElementById('leftcol').appendChild(transContent);
    }

    
    var transactions = [];
    let transactionItem = {};
    
    <c:forEach items="${list}" var="dto">
    	transactionItem  = {
	        date: '${dto.start}',
	        category: '${dto.category}',
	        where: '${dto.loc}',
	        content: '${dto.content}',
	        amount: '${dto.amount}',
	        amountIndicator: '${dto.amountIndicator == '1' ? '+' : '-'}', /* 1이 입급, 2가 출금 */
	    };
	    	    
	    transactions.push(transactionItem);
	</c:forEach>

	console.log(transactions);

    transactions.forEach(transaction => {
        addTransaction(transaction.date, transaction.category, transaction.where, transaction.amount, transaction.amountIndicator, transaction.content);
    });
    
    function getCurrentMonthYear() {
        const now = new Date();
        const headerMonth = (now.getMonth() + 1).toString();
        const currentMonth = (now.getMonth() + 1).toString().padStart(2, '0'); // getMonth returns month from 0 (January) to 11 (December)
        const currentYear = now.getFullYear().toString();
        return { currentMonth, currentYear,headerMonth };
    }
    
    function calculateAndDisplayTotals(transactions) {
        const { currentMonth, currentYear, headerMonth } = getCurrentMonthYear();
        let totalPositive = 0;
        let totalNegative = 0;
        const lastTwoDigitsOfYear = currentYear.substring(2,4);
        console.log("Current Month:", currentMonth);
        console.log("Current Year (last two digits):", lastTwoDigitsOfYear);
		console.log(headerMonth);
        transactions.forEach(transaction => {
            var transactionDate = transaction.date;
            console.log(transactionDate);
            var transactionMonth = transactionDate.substring(3,5);
            var transactionYear = transactionDate.substring(0,2);
            
            // Only process transactions from the current month and year
            if (transactionMonth === currentMonth && transactionYear === lastTwoDigitsOfYear) {
                console.log('here')
                let amount = parseFloat(transaction.amount.replace(/,/g, '')); // Convert string amount to number
                if (transaction.amountIndicator === '+') {
                    totalPositive += amount; // Sum positive amounts
                } else if (transaction.amountIndicator === '-') {
                    totalNegative += amount; // Sum negative amounts
                }
            }
        });
	
        console.log(totalPositive);
        console.log(totalNegative);
        
        let formattedPositive = (totalPositive > 0 ? '+'+totalPositive.toLocaleString() : totalPositive.toLocaleString());
        let formattedNegative = (totalNegative < 0 ? totalNegative.toLocaleString() : '-'+totalNegative.toLocaleString());
        document.getElementById('monthindicate').innerHTML = headerMonth;
        document.getElementById('totalPositive').innerHTML = formattedPositive;
        document.getElementById('totalNegative').innerHTML = formattedNegative;
        // Update the DOM with the calculated totals
    }

    // Example usage:
    calculateAndDisplayTotals(transactions); // Assuming 'transactions' is your data array

    
    
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
    
     document.addEventListener('DOMContentLoaded', function() {
        const addButton = document.getElementById('addrightnow');
        const newItemInput = document.getElementById('newItemInput');
        const wishList = document.getElementById('wishListItems');
        const newItemButton = document.getElementById('newItemButton');
        const cbcbbox = document.getElementById('addcheckbox');
        const delitembtn = document.getElementById('listdelbutton');
        

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
            transContent.id = 'wishlistContent';
        
            const checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.className = 'frontback';
            checkbox.id = 'addcheckbox';

            const transDesc = document.createElement('div');
            transDesc.className = 'wish';
            transDesc.id = 'wishlistItem';
            transDesc.textContent = itemText;

            const deleteBtn = document.createElement('div');
            deleteBtn.className = 'frontback';
            deleteBtn.id = 'listdelbutton';
            deleteBtn.innerHTML = '<div id="listdelbutton" class="frontback"><i class="fa-solid fa-xmark"></i></div>';
            deleteBtn.onclick = function() {
                wishList.removeChild(transContent);
                
                let contentOfTransDate = transDesc.textContent;
                console.log('Deleting item with transdate content:', contentOfTransDate);
                
                delwishlist(contentOfTransDate);
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
        
       	function delwishlist(text){
             if(window.confirm('삭제하시겠습니까?')){
 				if(delRequest !== null){
 					delRequest.abort();
 					console.log('abort');
 				}
 			}
             console.log(text);
 			delRequest = $.ajax({
 				url:'/account/account/delwishlist.do',
 				type:'post',
 				data:{
 					content: text
 				},
                 success: function (response) {
                     alert('Edit successful');
                     
                 },
                 error: function (xhr, status, error) {
                     alert('Error: ' + xhr.responseText);
                 }
 			})
         }; 
       	
    });

    </script>
</body>

</html>

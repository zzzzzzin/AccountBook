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


#transdate {
    font-weight: bold; /* Applying bold font style */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f0f0f0; 
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

        <!-- fakecontent 끝 -->
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
        
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
	

    function addTransaction(date, category, where, amount, amountIndicator, content) {
        // Create main transaction container
        const transContent = document.createElement('div');
        transContent.id = 'transcontent';

        const transDate = document.createElement('div');
        transDate.className = 'transin';
        transDate.id = 'transdate';
        transDate.textContent = date;

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

        document.getElementById('fakecontent').appendChild(transContent);
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

    </script>
</body>

</html>

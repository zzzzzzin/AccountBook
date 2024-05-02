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
			<div id="fakecontent">
				<div id="periodcheck">
					<button>일일</button>
					<button>주간</button>
					<button>월간</button>
				</div>

				<div id="firstrow">
					<!-- Sales Chart Start -->
					<div id="chart01">
						<div id="pieblock">
							<canvas id="piepie" class="pie"></canvas>
						</div>
						<div id="pieblock">
							<canvas id="piepie2" class="pie"></canvas>
						</div>
					</div>
					<div id="customMsg">이번달 목표를 달성할거 샅습니다!!!</div>
					<!-- Sales Chart End -->
				</div>

				<div id="secondrow">
					<div id="monthgoal">이번달 목표 : 200만원</div>
					<div id="currentsituation">이번달 사용 : 100만원</div>
				</div>
				<div id="chartLegend"></div>
				<div id="thridrow">
					<div id="newscontent">뉴스 뉴스 뉴스 뉴스 뉴스 뉴스</div>
				</div>

				<!-- Back to Top -->
				<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
					class="bi bi-arrow-up"></i></a>
			</div>
		</div>
		</div>

		<!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js"></script><script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
   
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/asset/css/temp/js/main.js"></script>
    <script>


    var ctx = document.getElementById('piepie').getContext('2d');
    var chart1 = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ['식비', '교통', '현금'],
            datasets: [{
                label: 'My First Dataset',
                data: [300, 50, 100],
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)'
                ],
                hoverOffset: 4
            }]
        },
        options: {
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    var ctx1 = document.getElementById('piepie2').getContext('2d');
    var chart2 = new Chart(ctx1, {
        type: 'pie',
        data: {
            labels: ['식비', 'Blue', 'Green'],
            datasets: [{
                label: 'My Second Dataset',
                data: [300, 50, 800],
                backgroundColor: [
                    'rgb(255, 99, 132)',
                    'rgb(54, 162, 235)',
                    'rgb(255, 205, 86)'
                ],
                hoverOffset: 4
            }]
        },
        options: {
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    });

    function createSharedCustomLegend(charts) {
        const legendContainer = document.getElementById('chartLegend');
        legendContainer.innerHTML = ''; // Clear any existing legend content

        charts[0].data.labels.forEach((label, index) => {
            const color = charts[0].data.datasets[0].backgroundColor[index];
            const legendItem = document.createElement('div');
            console.log('color');
            console.log('legendItem');
            legendItem.innerHTML = `<span style="background-color:\${color}; width: 12px; height: 12px; display: inline-block; margin-right: 5px; margin-left: 5px;"></span> \${label}`;
            legendItem.style.cursor = 'pointer';
            legendItem.onclick = function() {
                charts.forEach(chart => {
                    const meta = chart.getDatasetMeta(0);
                    meta.data[index].hidden = !meta.data[index].hidden; // Toggle visibility
                    chart.update();
                });
            };
            legendContainer.appendChild(legendItem);
        });
    }

    createSharedCustomLegend([chart1, chart2]);

    document.addEventListener('DOMContentLoaded', function() {
        const sidebarToggler = document.getElementById('sidebar-toggler');
        const sidebar = document.querySelector('.sidebar');
        const content = document.querySelector('.content');

        sidebarToggler.addEventListener('click', function() {
            sidebar.classList.toggle('hidden');
            content.classList.toggle('expanded');
        });
    });

    </script>
</body>

</html>

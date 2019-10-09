<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE HTML>
<html>
<head>
<title>Glance Design Dashboard an Admin Panel Category Flat
	Bootstrap Responsive Website Template | Charts :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script>
$(function() {
	
});

function deleteLine(obj) {
    var tr = $(obj).parent().parent();
    //라인 삭제
    tr.remove();
}
</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons CSS -->

<!-- side nav css file -->
<link href='css/SidebarNav.min.css' media='all' rel='stylesheet'
	type='text/css' />
<!-- side nav css file -->

<!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link
	href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext"
	rel="stylesheet">
<!--//webfonts-->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

<style>
#chartdiv1 {
	height: 295px;
	float: none; 
	margin:0 auto;
}

.jqcandlestick-container {
	width: 100%;
	height: 300px;
}
</style>
</head>
<body class="cbp-spmenu-push">
	<div class="main-content">
		<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left"
			id="cbp-spmenu-s1">
			<!--left-fixed -navigation-->
			<aside class="sidebar-left">
				<nav class="navbar navbar-inverse">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=".collapse"
							aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<h1>
							<a class="navbar-brand" href="index"><span
								class="fa fa-area-chart"></span> FOODTRUCK<span
								class="dashboard_text">SCIT master 37th </span></a>
						</h1>
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="sidebar-menu">
							<!-- 프로젝트 메뉴 -->
							<li class="treeview"><a href="#"> <i
									class="fa fa-folder"></i> <span>Order Management</span> <i
									class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="OrderRegist"><i class="fa fa-angle-right"></i>Order
											Regist</a></li>
								</ul></li>
							<li class="treeview"><a href="#"> <i
									class="fa fa-folder"></i> <span>Sale Management</span> <i
									class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="SaleRegist"><i class="fa fa-angle-right"></i>Sale
											Regist</a></li>
									<li><a href="SaleSelect"><i class="fa fa-angle-right"></i>Sale
											Select</a></li>
								</ul></li>
							<li class="treeview"><a href="#"> <i
									class="fa fa-folder"></i> <span>Employee Management</span> <i
									class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="EmployeeRegist"><i
											class="fa fa-angle-right"></i>Employee Regist</a></li>
									<li><a href="EmployeeSelect"><i
											class="fa fa-angle-right"></i>Employee Select</a></li>
								</ul></li>
							<li class="treeview"><a href="#"> <i
									class="fa fa-folder"></i> <span>Customer Management</span> <i
									class="fa fa-angle-left pull-right"></i>
							</a>
								<ul class="treeview-menu">
									<li><a href="CustomerRegist"><i
											class="fa fa-angle-right"></i>Customer Regist</a></li>
									<li><a href="CustomerSelect"><i
											class="fa fa-angle-right"></i>Customer Select</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</aside>
		</div>
		<!--left-fixed -navigation-->

		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">

				<!--toggle button start-->
				<button id="showLeftPush">
					<i class="fa fa-bars"></i>
				</button>
				<!--toggle button end-->
				<div class="profile_details_left">
					<!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"><i class="fa fa-envelope"></i><span
								class="badge">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new messages</h3>
									</div>
								</li>
								<li><a href="#">
										<div class="user_img">
											<img src="images/1.jpg" alt="">
										</div>
										<div class="notification_desc">
											<p>Lorem ipsum dolor amet</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li class="odd"><a href="#">
										<div class="user_img">
											<img src="images/4.jpg" alt="">
										</div>
										<div class="notification_desc">
											<p>Lorem ipsum dolor amet</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li><a href="#">
										<div class="user_img">
											<img src="images/3.jpg" alt="">
										</div>
										<div class="notification_desc">
											<p>Lorem ipsum dolor amet</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div>
								</li>
							</ul></li>
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"><i class="fa fa-bell"></i><span
								class="badge blue">4</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new notification</h3>
									</div>
								</li>
								<li><a href="#">
										<div class="user_img">
											<img src="images/4.jpg" alt="">
										</div>
										<div class="notification_desc">
											<p>Lorem ipsum dolor amet</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li class="odd"><a href="#">
										<div class="user_img">
											<img src="images/1.jpg" alt="">
										</div>
										<div class="notification_desc">
											<p>Lorem ipsum dolor amet</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li><a href="#">
										<div class="user_img">
											<img src="images/3.jpg" alt="">
										</div>
										<div class="notification_desc">
											<p>Lorem ipsum dolor amet</p>
											<p>
												<span>1 hour ago</span>
											</p>
										</div>
										<div class="clearfix"></div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div>
								</li>
							</ul></li>
						<li class="dropdown head-dpdn"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"><i class="fa fa-tasks"></i><span
								class="badge blue1">8</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 8 pending task</h3>
									</div>
								</li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Database update</span><span
												class="percentage">40%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar yellow" style="width: 40%;"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Dashboard done</span><span
												class="percentage">90%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar green" style="width: 90%;"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Mobile App</span><span
												class="percentage">33%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar red" style="width: 33%;"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="task-info">
											<span class="task-desc">Issues fixed</span><span
												class="percentage">80%</span>
											<div class="clearfix"></div>
										</div>
										<div class="progress progress-striped active">
											<div class="bar  blue" style="width: 80%;"></div>
										</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all pending tasks</a>
									</div>
								</li>
							</ul></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!--notification menu end -->
			</div>
			<div class="header-right">
				<div class="profile_details">
					<ul>
						<li class="dropdown profile_details_drop"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false">
								<div class="profile_img">
									<span class="prfil-img"><img src="images/2.jpg" alt="">
									</span>
									<div class="user-name">
										<p>Admin Name</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i> <i
										class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>
								</div>
						</a>
							<ul class="dropdown-menu drp-mnu">
								<li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
								<li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
								<li><a href="#"><i class="fa fa-suitcase"></i> Profile</a>
								</li>
								<li><a href="#"><i class="fa fa-sign-out"></i> Logout</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="charts">
				<div class="col-md-4 charts-grids widget states-mdl" style="width:100%; float:none; margin:0 auto">
					<div class="card-header">
						<h3>Monthly Sales</h3>
					</div>
					<div id="chartdiv1"></div>
				</div>
				<br>
				<div class="clearfix"></div>
			</div>
			<div class="bs-example widget-shadow" data-example-id="hoverable-table">
<%-- 				<form action="selectAllSale" method="get">
					<input type="hidden" value="${navi.currentPage}"> SEARCH : 
					<input type="text" name="searchWord" value="${searchWord}"> 
					<input type="submit" value="search">
				</form>
 --%>				<!--search-box-->
				<div class="search-box">
					<form class="input" action="selectAllSale" method="get">
						<input type="hidden" value="${navi.currentPage}">
						<input class="sb-search-input input__field--madoka"
							placeholder="Search..." type="search" id="input-31" name="searchWord" value="${searchWord}"/> 
							<label class="input__label" for="input-31" > <svg class="graphic"
								width="100%" height="100%" viewBox="0 0 404 77"
								preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z" />
							</svg>
						</label>
					</form>
				</div>
				<!--//end-search-box-->
				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Pay Date</th>
							<th>Menu Name</th>
							<th>Menu Amount</th>
							<th>Employee Name</th>
							<th>Point</th>
							<th>Cash</th>
							<th>Card</th>
						</tr>
					</thead>
					<tbody id="temptable">
						<c:forEach items="${sList}" var="sale">
							<tr>
								<td>${sale.saleSeq}</td>
								<td>${sale.payDate}</td>
								<td>${sale.menuName}</td>
								<td>${sale.menuCount}</td>
								<td>${sale.memberName}</td>
								<td>${sale.pointValue}</td>
								<td>${sale.cashValue}</td>
								<td>${sale.cardValue}</td>
								<td><button onclick = 'deleteLine(this);' class='close' id='deleteLine'>x</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div id ="page-navi">
					<a href="selectAllSale?page=1&searchWord=${searchWord}">&lt;&lt;</a>
					&nbsp;<a href="selectAllSale?page=${navi.startPageGroup-1}&searchWord=${searchWord}">&lt;</a>
	
					<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
	
						<a href="selectAllSale?page=${counter}&searchWord=${searchWord}">${counter}</a>
	
					</c:forEach>
	
					<a href="selectAllSale?page=${navi.endPageGroup+1}&searchWord=${searchWord}">&gt;</a>&nbsp;
					<a href="selectAllSale?page=${navi.totalRecordsCount}&searchWord=${searchWord}&searchWord=${searchWord}">&gt;&gt;</a>
				</div>
			</div>
			<br>
			<div class="row text-center" style="width: 100%">
				<div style="width: 30%; float: none; margin: 0 auto">
					<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
					<button type="button" class="btn btn-primary" id="deleteData">Submit</button>
					<!-- Indicates a dangerous or potentially negative action -->
					<button type="button" class="btn btn-danger" id="updateData">Reset</button>
				</div>
			</div>

			<!-- for amcharts js -->
			<script src="js/amcharts.js"></script>
			<script src="js/serial.js"></script>
			<script src="js/export.min.js"></script>
			<link rel="stylesheet" href="css/export.css" type="text/css" media="all" />
			<script src="js/light.js"></script>
			<!-- for amcharts js -->

			<script src="js/index2.js"></script>
				</div>

				<div class="clearfix"></div>
			</div>
			<script src="js/index.js"></script>

		</div>
	</div>
	<!--footer-->
	<div class="footer">
		<p>
			&copy; 2018 Glance Design Dashboard. All Rights Reserved | Design by
			<a href="https://w3layouts.com/" target="_blank">w3layouts</a>
		</p>
	</div>
	<!--//footer-->

	<!-- new added graphs chart js-->

	<script src="js/Chart.bundle.js"></script>
	<script src="js/utils.js"></script>
	<!-- new added graphs chart js-->

	<!-- Classie -->
	<!-- for toggle left push menu script -->
	<script src="js/classie.js"></script>
	<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie -->
	<!-- //for toggle left push menu script -->

	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"> </script>

	<!-- candlestick -->
	<!-- for points and multiple y-axis charts js -->
	<script type="text/javascript" src="js/jquery.jqcandlestick.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jqcandlestick.css" />
	<!-- //candlestick -->
	<!-- //for points and multiple y-axis charts js -->

	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->

</body>
</html>
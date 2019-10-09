<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE HTML>
<html>
<head>
<title>Glance Design Dashboard an Admin Panel Category Flat Bootstrap Responsive Website Template | Forms :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#menuName").on("change",function(){
			selMenu();
		});
		$("#menuCount").on("blur",function(){
			inputAmount();			
		});
		$("#cashValue").on("blur",function(){
			cashCard();
		});
		$("#inputTempTable").on("click",function(){
			inputTempTable();
		});
		$("#SaleDBRegist").on("click",function(){
			submitAll();
		});
		$("#SaleAllDelete").on("click",function(){
			deleteAll();
		});
		
	});
	
	var menuId;
	var menuPrice;
	var result;
	var index = 1;
	
	function selMenu() {
		$.ajax({
			url:"selectSaleMenu",
			data:{menuName:$("#menuName").val()},
			type:"Get",
			success: function(resultMap){
				if(resultMap.menuId != 0) {
					$("#menuId").val(resultMap.menuId);
					menuId = resultMap.menuId;
					menuPrice = resultMap.menuPrice;
				} else {
					alert("Menu not exist");
				}
			},
		    beforeSend:function(){
		        $('.wrap-loading').removeClass('display-none');
		    },
		    complete:function(){
		   		$('.wrap-loading').addClass('display-none');
		   		alert("Menu Apply");
		    },
			error:function(error) {
				alert("Server Error");
			},
			timeout:100000
		});
	}
	
	function inputAmount() {
		var menuCount = $("#menuCount").val();
		if(menuCount != 0 && menuPrice != 0) {
			result = parseInt(menuPrice) * parseInt(menuCount);
			$("#result").val(result);
		} else {
			$("#message").html("Input Menu or Menu Amount First");
		}
	}
	
	function cashCard() {
		var cashValue = $("#cashValue").val();
		
		if(cashValue > result) {
			alert("Wrong Value");
			$("#cashValue").val("");
		} else {
			var cardValue = parseInt(result)-parseInt(cashValue);
			alert(cardValue);
			$("#cardValue").val(cardValue);
		}
	}
	
	function inputTempTable(){
		var context = "";
		var queryString = $("form[name=menuInfo]").serialize();
		$.ajax({
			type : "POST"
			,url : "SaleTempRegist"
			,data : queryString
			,dataType : 'json'
			,success : function(sale) {
				
				context += "<tr id='tempTr'><th scope='row'>"+ index+"</th>";
				context += "<td>" + sale.menuName +"</td>";
				context += "<td>" + menuId + "</td>"
				context += "<td>" + sale.menuCount+"</td>";
				context += "<td>" + sale.payDate + "</td>";
				context += "<td>" + sale.cashValue +"</td>";
				context += "<td>" + sale.cardValue +"</td>";
				context += "<td><button onclick = 'deleteLine(this);' class='close' id='deleteLine'>x</button></td></tr>";

				$("#temptable").append(context);
				index++;
			}
			,error:function(error) {
				alert("Server Error");
			}
		});
	}
	
	function deleteLine(obj) {
	    var tr = $(obj).parent().parent();
	    //라인 삭제
	    tr.remove();
	}
	
	function deleteAll() {
		//테이블 전체 삭제
		$("#temptable").empty();
		index = 1;
	}
	
	function submitAll() {
		var arrToSend = [];
		var arrToSend1 =[];
		
		$("#temptable tr").each(function(){
			var len = $(this).find('td').length;
			
			for(var i=0;i<len-1;i++) {
					arrToSend.push($(this).find("td").eq(i).text());
			}
			arrToSend1.push(arrToSend);
		});
		
		$.ajax({
			contentType:"application/json"
			,type:"post"
			,data:JSON.stringify(arrToSend1)
			,url:"SaleDBRegist"
			,success:function(data){
				console.log('done');
			}
			,error: function(jqXHR, textStatus, errorThrown) {
				console.log('error while post');
			}
			,beforeSend:function(){
		        $('.wrap-loading').removeClass('display-none');
		    },
		    complete:function(){
		   		$('.wrap-loading').addClass('display-none');
		   		alert("Sale List Saved");
		   		location.replace('SaleSelect');
		    },
			error:function(error) {
				alert("Server Error");
			},
			timeout:100000
		});
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
 <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->
 
 <!-- js-->
<!-- <script src="js/jquery-1.11.1.min.js"></script> -->
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
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
							<a class="navbar-brand" href="/app"><span
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
				</nav>
			</aside>
		</div>
		<!-- main contents start -->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="col_3">
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-dollar icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>$452</strong>
								</h5>
								<span>Total Revenue</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-laptop user1 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>$1019</strong>
								</h5>
								<span>Online Revenue</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-money user2 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>$1012</strong>
								</h5>
								<span>Expenses</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget widget1">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-pie-chart dollar1 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>$450</strong>
								</h5>
								<span>Expenditure</span>
							</div>
						</div>
					</div>
					<div class="col-md-3 widget">
						<div class="r3_counter_box">
							<i class="pull-left fa fa-users dollar2 icon-rounded"></i>
							<div class="stats">
								<h5>
									<strong>1450</strong>
								</h5>
								<span>Total Users</span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<br>
				<!-- Temp Table -->
				<div class="bs-example widget-shadow"
					data-example-id="hoverable-table">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Menu Name</th>
								<th>Menu Amount</th>
								<th>Pay Date</th>
								<th>Cash</th>
								<th>Card</th>
							</tr>
						</thead>
						<tbody id="temptable"></tbody>
					</table>
				</div>
				<!-- //Temp Table -->

				<div class="row text-center" style="width: 100%">
					<div style="width: 30%; float: none; margin: 0 auto">
						<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
						<button type="button" class="btn btn-primary" id="SaleDBRegist">Submit</button>
						<!-- Indicates a dangerous or potentially negative action -->
						<button type="button" class="btn btn-danger" id="SaleAllDelete">Reset</button>
					</div>
				</div>
				<div class="forms">
					<h2 class="title1">Sale Management</h2>
					<div class="form-grids row widget-shadow"
						data-example-id="basic-forms">
						<div class="row">
							<div class="form-three widget-shadow">
								<form class="form-horizontal" id="menuInfo" name="menuInfo">
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Menu
											name</label>
										<div class="col-sm-8">
											<select name="menuName" id="menuName" class="form-control1">
												<option>-----------</option>
												<option>Sandwich</option>
												<option>Hamburger</option>
												<option>Cheeseburger</option>
												<option>French fries</option>
											</select>
										</div>
										<div>
											<p class="help-block"></p>
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Menu
											amount</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" id="menuCount"
												placeholder="Default Input" name="menuCount">
										</div>
										<div class="col-sm-2">
											<p class="help-block">Dish Counts</p>
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Pay
											price</label>
										<div class="col-sm-8">
											<input disabled type="text" class="form-control1" id="result"
												placeholder="Default Input">
										</div>
										<div class="col-sm-2">
											<p class="help-block" id="message" style="color: red;"></p>
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Pay
											Date</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" id="focusedinput"
												placeholder="Default Input" name="payDate">
										</div>
										<div class="col-sm-2">
											<p class="help-block">Payment Date</p>
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Cash</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" id="cashValue"
												placeholder="0" name="cashValue">
										</div>
										<div class="col-sm-2">
											<p class="help-block">Cash Payment Total</p>
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Card</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" id="cardValue"
												placeholder="0" name="cardValue">
										</div>
										<div class="col-sm-2">
											<p class="help-block">Card Payment Total</p>
										</div>
									</div>
									<input type="hidden" id="menuId" name="menu_Id"> <input
										type="hidden" id="result" name="menu_Price">
									<div class="row text-center" style="width: 100%">
										<div style="width: 30%; float: none; margin: 0 auto">
											<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
											<button type="button" class="btn btn-primary"
												id="inputTempTable">Submit</button>
											<!-- Indicates a dangerous or potentially negative action -->
											<button type="reset" class="btn btn-danger">Cancel</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	<!-- //main contents ends -->
			<!-- header-starts -->
	<div class="sticky-header header-section ">
		<div class="header-left">
			
			<!--toggle button start-->
			<button id="showLeftPush"><i class="fa fa-bars"></i></button>
			<!--toggle button end-->
			<div class="profile_details_left"><!--notifications of menu start -->
				<ul class="nofitications-dropdown">
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">4</span></a>
						<ul class="dropdown-menu">
							<li>
								<div class="notification_header">
									<h3>You have 3 new messages</h3>
								</div>
							</li>
							<li><a href="#">
							   <div class="user_img"><img src="images/1.jpg" alt=""></div>
							   <div class="notification_desc">
								<p>Lorem ipsum dolor amet</p>
								<p><span>1 hour ago</span></p>
								</div>
							   <div class="clearfix"></div>	
							</a></li>
							<li class="odd"><a href="#">
								<div class="user_img"><img src="images/4.jpg" alt=""></div>
							   <div class="notification_desc">
								<p>Lorem ipsum dolor amet </p>
								<p><span>1 hour ago</span></p>
								</div>
							  <div class="clearfix"></div>	
							</a></li>
							<li><a href="#">
							   <div class="user_img"><img src="images/3.jpg" alt=""></div>
							   <div class="notification_desc">
								<p>Lorem ipsum dolor amet </p>
								<p><span>1 hour ago</span></p>
								</div>
							   <div class="clearfix"></div>	
							</a></li>
							<li>
								<div class="notification_bottom">
									<a href="#">See all messages</a>
								</div> 
							</li>
						</ul>
					</li>
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">4</span></a>
						<ul class="dropdown-menu">
							<li>
								<div class="notification_header">
									<h3>You have 3 new notification</h3>
								</div>
							</li>
							<li><a href="#">
								<div class="user_img"><img src="images/4.jpg" alt=""></div>
							   <div class="notification_desc">
								<p>Lorem ipsum dolor amet</p>
								<p><span>1 hour ago</span></p>
								</div>
							  <div class="clearfix"></div>	
							 </a></li>
							 <li class="odd"><a href="#">
								<div class="user_img"><img src="images/1.jpg" alt=""></div>
							   <div class="notification_desc">
								<p>Lorem ipsum dolor amet </p>
								<p><span>1 hour ago</span></p>
								</div>
							   <div class="clearfix"></div>	
							 </a></li>
							 <li><a href="#">
								<div class="user_img"><img src="images/3.jpg" alt=""></div>
							   <div class="notification_desc">
								<p>Lorem ipsum dolor amet </p>
								<p><span>1 hour ago</span></p>
								</div>
							   <div class="clearfix"></div>	
							 </a></li>
							 <li>
								<div class="notification_bottom">
									<a href="#">See all notifications</a>
								</div> 
							</li>
						</ul>
					</li>	
					<li class="dropdown head-dpdn">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">8</span></a>
						<ul class="dropdown-menu">
							<li>
								<div class="notification_header">
									<h3>You have 8 pending task</h3>
								</div>
							</li>
							<li><a href="#">
								<div class="task-info">
									<span class="task-desc">Database update</span><span class="percentage">40%</span>
									<div class="clearfix"></div>	
								</div>
								<div class="progress progress-striped active">
									<div class="bar yellow" style="width:40%;"></div>
								</div>
							</a></li>
							<li><a href="#">
								<div class="task-info">
									<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
								   <div class="clearfix"></div>	
								</div>
								<div class="progress progress-striped active">
									 <div class="bar green" style="width:90%;"></div>
								</div>
							</a></li>
							<li><a href="#">
								<div class="task-info">
									<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
									<div class="clearfix"></div>	
								</div>
							   <div class="progress progress-striped active">
									 <div class="bar red" style="width: 33%;"></div>
								</div>
							</a></li>
							<li><a href="#">
								<div class="task-info">
									<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
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
						</ul>
					</li>	
				</ul>
				<div class="clearfix"> </div>
			</div>
			<!--notification menu end -->
			<div class="clearfix"> </div>
		</div>
		<div class="header-right">
			
			
			<!--search-box-->
			<div class="search-box">
				<form class="input">
					<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
					<label class="input__label" for="input-31">
						<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
							<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
						</svg>
					</label>
				</form>
			</div><!--//end-search-box-->
			
			<div class="profile_details">		
				<ul>
					<li class="dropdown profile_details_drop">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							<div class="profile_img">	
								<span class="prfil-img"><img src="images/2.jpg" alt=""> </span> 
								<div class="user-name">
									<p>Admin Name</p>
									<span>Administrator</span>
								</div>
								<i class="fa fa-angle-down lnr"></i>
								<i class="fa fa-angle-up lnr"></i>
								<div class="clearfix"></div>	
							</div>	
						</a>
						<ul class="dropdown-menu drp-mnu">
							<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
							<li> <a href="#"><i class="fa fa-user"></i> My Account</a> </li>
							<li> <a href="#"><i class="fa fa-suitcase"></i> Profile</a> </li> 
							<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
						</ul>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>				
		</div>
		<div class="clearfix"> </div>	
	</div>
	<!-- //header-ends -->
	<!--footer-->
	<div class="footer">
	   <p>&copy; 2018 Glance Design Dashboard. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts</a></p>
   </div>
    <!--//footer-->
</div>
	
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
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
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
   
   <!-- Ajax loading  -->
   <style>
	.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
	    position: fixed;
	    left:0;
	    right:0;
	    top:0;
	    bottom:0;
	    background: rgba(0,0,0,0); /*not in ie */
	    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
	}
	    .wrap-loading div{ /*로딩 이미지*/
	        position: fixed;
	        top:50%;
	        left:50%;
	        margin-left: -21px;
	        margin-top: -21px;
	    }
	    .display-none{ /*감추기*/
	        display:none;
	    }
	</style>
	<div class="wrap-loading display-none">
	    <div><img src="images/loading1.gif" /></div>
	</div>
</body>
</html>
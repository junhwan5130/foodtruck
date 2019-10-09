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
<title>Glance Design Dashboard an Admin Panel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link type="text/css" href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom CSS -->
<link type="text/css" href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link type="text/css" href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS-->

<!-- side nav css file -->
<link type="text/css" href="css/SidebarNav.min.css" media='all' rel='stylesheet' type='text/css'/>
<!-- //side nav css file -->
 
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
<style>
#chartdiv {
  width: 100%;
  height: 295px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){
		
	$("button").click(function(){
		var type = $(this).attr('data-type');
		
		
		if(type=='add'){
			addIngredients();
		}
		if(type=='delete'){
			deleteIngredients();
		}
	});
	
	/* $("$radiobutton").click(function(){
		var id = $(this).attr('data-id');
		alert(id);
		var radioVal = $('input[name="radiobutton"]:checked').val();
		
		
	}); */
	
	
});	
	
	function deleteIngredients(){
		var id = $("#radiobutton").attr('data-id');
		alert(id);
		$.ajax({
			url:'deleteMaterials',
			data:{
				cm_id:id
			},
			type:"post",
			success:function(data){
				if(data=="ok"){
					showIngredients();
				}
			}
		});
	}


	function addIngredients(){
		$.ajax({
			url:'addMaterials',
			data:{
				cm_name:$('#cm_name').val(),
				cm_unit:$('#cm_unit').val(),
				cm_amount:$('#cm_amount').val(),
				cm_inputdate:$('#cm_inputdate').val(),
				cm_expdate:$('#cm_expdate').val(),
				cm_origin:$('#cm_origin').val(),
				cm_saftyStock:$('#cm_saftyStock').val(),
				cm_price:$('#cm_price').val()
			},
			type:'post',
			success:function(data){
				if(data=='ok'){
					alert('success');
					showIngredients();
				}
			}
		});
	}
	
	function showIngredients(){
		$.ajax({
			url:'showMaterials',
			type:'get',
			success:function(list){
				$("tbody").html(""); 
				var str="";
				
				for(var i=0; i<list.length;i++){
					str+="<tr>";
					str+="<th scope='row'>"+list[i].cm_id+"</th>";
					str+="<td>"+list[i].cm_name+"</td>";
					str+="<td>"+list[i].cm_unit+"</td>";
					str+="<td>"+list[i].cm_amount+"</td>";
					str+="<td>"+list[i].cm_inputdate+"</td>";
					str+="<td>"+list[i].cm_outdate+"</td>";
					str+="<td>"+list[i].cm_expdate+"</td>";
					str+="<td>"+list[i].cm_origin+"</td>";
					str+="<td>"+list[i].cm_saftyStock+"</td>";
					str+="<td>"+list[i].price+"</td>";
					str+="<td><input type='radio' name='radiobutton' id='radiobutton' data-id='"+list[i].cm_id+"'></td>";
					str+="</tr>";
					$("tbody").append(str);
				}
			}
		});
	}
	

</script>
<!-- //requried-jsfiles-for owl -->
</head> 
<body class="cbp-spmenu-push">
   <div class="main-content">
   <div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
      <!--left-fixed -navigation-->
      <aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="/app"><span class="fa fa-area-chart"></span> FOODTRUCK<span class="dashboard_text">SCIT master 37th </span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="/app">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
              </li>
           
              <!-- 프로젝트 메뉴 -->
               <li class="treeview">
                <a href="#">
                <i class="fa fa-folder"></i> <span>Ingredients Management</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="IngredientsTable"><i class="fa fa-angle-right"></i>Ingredients Table</a></li>
                 <!--  <li><a href="IngredientsInput"><i class="fa fa-angle-right"></i>Ingredients Input</a></li>
                  <li><a href="IngredientsUpdate"><i class="fa fa-angle-right"></i>Ingredients Update</a></li>
                  <li><a href="IngredientsDelete"><i class="fa fa-angle-right"></i>Ingredients Delete</a></li> -->
                </ul>
               </li>
               <li class="treeview">
                <a href="#">
                <i class="fa fa-folder"></i> <span>Menu Management</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="Menu"><i class="fa fa-angle-right"></i>Menu</a></li>
                  <!-- <li><a href="MenuRegist"><i class="fa fa-angle-right"></i>Menu Regist</a></li> -->
                 <!--  <li><a href="MenuUpdate"><i class="fa fa-angle-right"></i>Menu Update</a></li>
                  <li><a href="MenuDelete"><i class="fa fa-angle-right"></i>Menu Delete</a></li> -->
                </ul>
               </li>
              
                   
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
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
				
					<div class="table-responsive bs-example widget-shadow">
						<div class="form-title">
								<h4>Ingredients Table:</h4>
						</div>
						
						<ul class="bt-list">
						<li><a href="IngredientsInput" class="hvr-icon-float-away col-1">ADD  </a></li>
						<!-- <li><a href="#" class="hvr-icon-spin col-2">UPDATE</a></li>
						<li><a href="#" class="hvr-icon-sink-away col-3">DELETE</a></li> -->
						</ul>
						
						<!-- <div class="button_set_one two agile_info_shadow">
						<button type = "button" class = "btn btn-success" data-type="add">ADD</button>
						<button type = "button" class = "btn btn-warning" data-type="update">UPDATE</button>
						<button type = "button" class = "btn btn-danger" data-type="delete">DELETE</button>
						</div> -->
						
						<table class="table table-bordered"> 
						<thead> 
							<tr> 
							<th></th> 
							<th>Name</th> 
							<th>Unit</th> 
							<th>Amount</th> 
							<th>In</th> 
							<th>Out</th> 
							<th>Expire Date</th>
							<th>Origin</th> 
							<th>Safty Stock</th>
							<th>Price</th>
							<th>Delete</th>
							<th>Used</th>  
							</tr> 
						</thead> 
						<tbody> 
						<c:forEach items="${list }" var="mtr" varStatus="status">
							<tr> 
							<th scope="row">${status.count}</th> 
							<td>${mtr.cm_name}</td> 
							<td>${mtr.cm_unit}</td> 
							<td>${mtr.cm_amount}</td> 
							<td>${mtr.cm_inputdate}</td> 
							<td>${mtr.cm_outdate}</td> 
							<td>${mtr.cm_expdate}</td>
							<td>${mtr.cm_origin}</td> 
							<td>${mtr.cm_saftyStock}</td>
							<td>${mtr.cm_price}</td>
							<form action="deleteM" method="post">
							<input type="hidden" name="cm_id" value="${mtr.cm_id}">
							<td><button type = "submit" class = "btn btn-danger">X</button></td>
							</form>
							<form action="updateM" method="post">
							<input type="hidden" name="cm_id" value="${mtr.cm_id}">
							<td><button type ="submit" class ="btn btn-warning">U</button></td>
							</form>
							
							</tr> 
						</c:forEach>	
						</tbody> 
						</table> 
					</div>
					
					<!-- <div class="form-title">
								<h4>Registration :</h4>
							</div> -->
							<!-- <div class="form-body">
								<form class="form-horizontal" action="insertMaterials" method="post"> 
									<div class="form-group"> 
										<label for="inputEmail3" class="col-sm-2 control-label">Name(*)</label> 
										<div class="col-sm-9"> 
										<input type="text" class="form-control" id="cm_name" name="cm_name" placeholder="Ingredients Name"> 
										</div> 
									</div> 
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Unit(*)</label> 
										<div class="col-sm-9"> 
										<input type="text" class="form-control" id="cm_unit" name="cm_unit" placeholder="Ingredients Unit"> 
										</div> 
									</div> 
									<div class="form-group"> 
										<label for="inputEmail3" class="col-sm-2 control-label">Amount(*)</label> 
										<div class="col-sm-9"> 
										<input type="number" class="form-control" id="cm_amount" name="cm_amount" placeholder="Ingredients Amount"> 
										</div> 
									</div> 
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Input Date(*)</label> 
										<div class="col-sm-9"> 
										<input type="date" class="form-control" id="cm_inputdate" name="cm_inputdate" placeholder="Ingredients Inputdate"> 
										</div> 
									</div>
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Output Date</label> 
										<div class="col-sm-9"> 
										<input type="date" class="form-control" id="cm_outdate" name="cm_outdate" placeholder="Ingredients Outputdate"> 
										</div> 
									</div>
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Expire Date(*)</label> 
										<div class="col-sm-9"> 
										<input type="date" class="form-control" id="cm_expdate" name="cm_expdate" placeholder="Expire Date"> 
										</div> 
									</div> 
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Origin(*)</label> 
										<div class="col-sm-9"> 
										<input type="text" class="form-control" id="cm_origin" name="cm_origin" placeholder="Ingredients Origin"> 
										</div> 
									</div>
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Safty Stock(*)</label> 
										<div class="col-sm-9"> 
										<input type="number" class="form-control" id="cm_saftyStock" name="cm_saftyStock" placeholder="Safty Stock"> 
										</div> 
									</div>
									<div class="form-group"> 
										<label for="inputPassword3" class="col-sm-2 control-label">Price</label> 
										<div class="col-sm-9"> 
										<input type="number" class="form-control" id="cm_price"  name="cm_price" placeholder="Price"> 
										</div> 
									</div>  
								
									<div class="col-sm-offset-2"> 
										<button type="submit" class="btn btn-default" id="reg_button">Regist</button> 
									</div>
									 
								</form> 
							</div> -->
					
					
					
					
					
				</div>
			</div>
		</div>
		
		
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
   
</body>
</html>
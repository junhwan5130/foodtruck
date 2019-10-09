<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script>
$(function(){
	$("#submit").click(function(){
		check();
		if (check==true) {
			$("#submit").submit();
			
			
		}
	});
	
})	
	function check(){
		var id=$("#userid").val();
		var pwd=$("#userpwd").val();
	
		if(id.length<3||id.length>7){
			alert("앙 ID 3~7자리띠~");
			return false;
		}
		if(pwd.length<3||pwd.length>7){
			alert("앙 PWD 3~7자리띠~");
			return false;
		}
		return true;
	}
</script>

</head>
<body>

<div class="col-md-6 validation-grids validation-grids-right">
							<div class="widget-shadow" data-example-id="basic-forms"> 
								<div class="form-title">
									<h4>Login</h4>
								</div>
								<div class="form-body">
									<form data-toggle="validator">
										<div class="form-group has-feedback">
											<input type="text" class="form-control" name="emp_id" id="userid" placeholder="Enter Your ID" data-error="Bruh, that email address is invalid" required>
											<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
										</div>
										<div class="form-group">
											<input type="password" data-toggle="validator" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
										</div>
										<div class="bottom">
											<div class="form-group">
												<div class="checkbox">
													<label>
														<input type="checkbox" id="terms" data-error="Before you wreck yourself" required>
														Remember me
													</label>
													<div class="help-block with-errors"></div>
												</div>
											</div>
											<div class="form-group">
												<button type="submit" class="btn btn-primary disabled">Login</button>
											</div>
											<div class="clearfix"> </div>
										</div>
									</form>
								</div>
							</div>

<form action="login" method="post" >

<p style="color: red" id="message">${message }</p><br>
<input type="text" name="emp_id" id="userid"><br>
<input type="password" name="emp_pwd" id="userpwd"><br>
<input type="submit" id="submit" value="Login">
</form>


</body>
</html>
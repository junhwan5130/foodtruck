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

<h1>[login] ${message} is on online!</h1>

<form action="login" method="post" >

<p style="color: red" id="message">${message }</p><br>
<input type="text" name="emp_id" id="userid"><br>
<input type="password" name="emp_pwd" id="userpwd"><br>
<input type="submit" id="submit" value="Login">
</form>


</body>
</html>
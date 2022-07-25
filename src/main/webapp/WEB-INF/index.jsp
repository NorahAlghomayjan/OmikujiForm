<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>
<link rel='stylesheet' href='webjars/bootstrap/5.1.3/css/bootstrap.min.css'>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="container mx-auto mt-5 align-items-center row">
		<h1 class="text-center"> Send an Omikuji..</h1>
		<div class="text-center">
			<form action="/show" method="post" class="form-group">
			
				<label class="m-1 ">pick any number from 5-25:</label>
				<div class="w-100"></div>
				
				<select class="m-1" name="selectedNum">
					<c:forEach var="i" begin="5" end="25">					
						<option> <c:out value="${i}"/> </option>
					</c:forEach>
				</select>
				<div class="w-100"></div>
			
				<label class="m-1">Enter name of any city:</label>
				<div class="w-100"></div>
				
				<input type="text" name="city">
				<div class="w-100"></div>
				
				<label class="m-1">Enter name of any real person:</label>
				<div class="w-100"></div>
				
				<input type="text" name="person">
				<div class="w-100"></div>
				
				
				<label class="m-1">Enter professional endeover or hobby:</label>
				<div class="w-100"></div>
				
				<input type="text" name="hobby">
				<div class="w-100"></div>
				
				<label class="m-1">Enter any time of living thing:</label>
				<div class="w-100"></div>
				
				<input type="text" name="living">
				<div class="w-100"></div>
				
				<label class="m-1">Say something nice to somebody:</label>
				<div class="w-100"></div>
				
				<textarea rows="4" cols="15" name="nice" class="m-1"></textarea>
				<div class="w-100"></div>
				
				<p class="m-1"> send and show a friend..</p>
				<div class="w-100"></div>
				
				<button>send</button>
			</form>
		</div>
	
	</div>
</body>
</html>
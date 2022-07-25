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
	<div class="container mx-auto mt-5 text-center row">
		<h1> Here is Your Omikuji..</h1>
		<div class="box p-5">
			<p class="fs-6"><c:out value="${output}"/> </p>
		</div>
		<a href="/">Go back</a>
	
	</div>
</body>
</html>
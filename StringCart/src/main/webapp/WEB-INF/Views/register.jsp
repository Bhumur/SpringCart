<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
	<form:form action="register" modelAttribute="registerUser">
	First Name : <form:input path="fname"/><br>
	Last Name : <form:input path="lname"/><br>
	Email : <form:input path="email"/><br>
	
	</form:form>>
</body>
</html>
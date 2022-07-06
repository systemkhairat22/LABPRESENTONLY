<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Admin</title>
</head>
<body>
<a href="listadmincontroller">List Of Member</a><br><br>
	
	<form action="updateadmincontroller" method="post">
		Admin IC Number: <br>
		<input type="text" name="admin_icnum" value="<c:out value="${a.admin_icnum}"/>"/><br>
		Admin Name: <br>
		<input type="text" name="add_name" value="<c:out value="${a.add_name}"/>"/><br>
		Admin Age: <br>
		<input type="number" name="add_age" value="<c:out value="${a.add_age}"/>"/><br>
		Admin Email: <br>
		<input type="text" name="add_email" value="<c:out value="${a.add_email}"/>"/><br>
		Admin Phone Number: <br>
		<input type="text" name="add_phonenum" value="<c:out value="${a.add_phonenum}"/>"/><br>
		Password: <br>
		<input type="password" name="add_password" value="<c:out value="${a.add_password}"/>"/><br>
		supervisorID: <br>
		<input type="number" name="supervisorid" value="<c:out value="${a.supervisorid}"/>"/>
		<input type="hidden" name="adminid" value="<c:out value="${a.adminid}"/>"/><br><br>
		
		<input type="submit" value="Submit"/>
		<input type="reset" value="Reset"/>
	</form>

</body>
</html>
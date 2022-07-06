<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Info</title>
</head>
<body>


<a href="listadmincontroller">List of Admin</a><br><br>
	
		<h1>Member Information</h1>
		Admin ID: <c:out value="${a.adminid}"/> <br>
		Admin Name: <c:out value="${a.add_name}"/> <br>
		Admin IC Number: <c:out value="${a.admin_icnum}"/> <br>
		Member Age: <c:out value="${a.add_age}"/> <br>
		Member Email: <c:out value="${a.add_email}"/> <br>
	   Phone Number: <c:out value="${a.add_phonenum}"/> <br>
		Member password: <c:out value="${a.add_password}"/> <br>
		Supervisor ID: <c:out value="${supervisorid}"/> <br>
       

</body>
</html>
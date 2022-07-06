<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member Info</title>

</head>
<body>
<a href="listmembercontroller">List of Member</a><br><br>
	
		<h1>Member Information</h1>
		Member ID: <c:out value="${m.memberid}"/> <br>
		Member Name: <c:out value="${m.mem_name}"/> <br>
		Member IC Number: <c:out value="${m.mem_icnum}"/> <br>
		Member Age: <c:out value="${m.mem_age}"/> <br>
		Member Email: <c:out value="${m.mem_email}"/> <br>
	   Phone Number: <c:out value="${m.mem_phonenum}"/> <br>
		Member password: <c:out value="${m.mem_password}"/> <br>
		Representative Name: <c:out value="${m.repname}"/> <br>
        Representative Number: <c:out value="${m.repnum}"/> <br>
</body>
</html>
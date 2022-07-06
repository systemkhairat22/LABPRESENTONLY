<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>member list</title>
</head>
<body>

<a href="createmember.jsp">Create Member</a><br><br>
<a href="home.html">Home</a><br><br>
		<table border="1">
			<tr>
				<th>Member ID</th>
				<th> Name</th>
				<th> IC Number</th>
				<th> Email </th>
				<th> Age</th>
				<th> Address</th>
				<th>Phone Number</th>
				<th>Representative Name</th>
				<th>Representative Number</th>
				<th>Password</th>
				<th colspan="10">Action</th>
			</tr>
			<c:forEach items ="${member}" var="m" varStatus="member">
			<tr>
				<td><c:out value="${m.memberid}" /></td>
				<td><c:out value="${m.mem_name}" /></td>
				<td><c:out value="${m.mem_icnum}" /></td>
				
				<td><c:out value="${m.mem_age}" /></td>
				<td><c:out value="${m.mem_address}" /></td>
				<td><c:out value="${m.mem_email}" /></td>
				<td><c:out value="${m.mem_phonenum}" /></td>
				<td><c:out value="${m.mem_password}" /></td>
			    <td><c:out value="${m.repname}" /></td>
			    <td><c:out value="${m.repnum}" /></td>
							
				<td><a class="btn btn-primary" href="viewmembercontroller?memberid=<c:out value="${m.memberid}"/>">View</a></td>
				<td><a class="btn btn-primary" href="updatemembercontroller?memberid=<c:out value="${m.memberid}"/>">Update</a></td>
				<td><a class="btn btn-primary" href="deletemembercontroller?memberid=<c:out value="${m.memberid}"/>">Delete</a></td>
				
			</tr>
			</c:forEach>
		</table>
		
		<!-- <script>
		function confirmation(id) {
			console.log(id);
			var r = confirm("Are you sure you want to delete?");
			if (r == true) {
				location.href = 'deletemembercontroller?memberid=' + id;
				alert("Member successfully deleted");
			} else {
				return false;
			}
		}
		</script> -->	
</body>
</html>
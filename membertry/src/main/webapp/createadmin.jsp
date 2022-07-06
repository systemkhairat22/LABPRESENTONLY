<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin list</title>
</head>
<body>
<a href = "listadmincontroller">Admin List</a>

 <form action="createadmincontroller" method="post">
		<table>
			<tbody>
                   <tr>
                       <th><label for="fullname">Full Name</label></th>
                       <th><input type="text"  name="add_name" placeholder="Full Name"></th>
                   </tr>
                   <tr>
                       <th><label for="addIC">IC Number</label></th>
                       <th><input type="text"  name="admin_icnum" placeholder="000000-00-0000"></th>
                   </tr>
                   <tr>
                       <th><label for="age">Age</label></th>
                       <th><input type="number"  name="add_age"></th>
                   </tr>
                   <tr>
                       <th><label for="phoneNumber">Phone Number</label></th>
                       <th><input type="text"  name="add_phonenum" placeholder="000-00000000"></th>
                   </tr>
                   <tr>
                       <th><label for="addEmail">Email</label></th>
                       <th><input type="text"  name="add_email" placeholder="abc@gmail.com "></th>
                   </tr>
                   <tr>
                       <th><label for="memPwd">Password</label></th>
                       <th><input type="password"  name="add_password"></th>
                   </tr>
                   <tr>
                       <th><label for="memPwd2">Confirm Password</label></th>
                       <th><input type="password"name="add_password"></th>
                   </tr>
                   <tr>
                       <th><label for="supervisorid">Supervisor ID</label></th>
                       <th><input type="number" name="supervisorid"></th>
                   </tr>
                   
			</tbody>
		</table>
		
		<input  type="submit" value= "submit" class="btn btn-outline-primary">
        <input type="reset"  value = "reset" class="btn btn-outline-primary">
	</form>


</body>
</html>
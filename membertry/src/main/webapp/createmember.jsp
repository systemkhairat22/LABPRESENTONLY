<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Member</title>
</head>
<body>
<a href = "listmembercontroller">Member List</a>

<form action="createmembercontroller" method="post">
		<table>
			<tbody>
                   <tr>
                       <th><label for="fullname">Full Name</label></th>
                       <th><input type="text"  name="mem_name" placeholder="Full Name"></th>
                   </tr>
                   <tr>
                       <th><label for="memIC">IC Number</label></th>
                       <th><input type="text"  name="mem_icnum" placeholder="000000-00-0000"></th>
                   </tr>
                   <tr>
                       <th><label for="age">Age</label></th>
                       <th><input type="number"  name="mem_age"></th>
                   </tr>
                   
                   <tr>
                       <th><label for="address">Address</label></th>
                       <th><input type="text"  name="mem_address"></th>
                       
                   </tr>
                   <tr>
                       <th><label for="phoneNumber">Phone Number</label></th>
                       <th><input type="text"  name="mem_phonenum" placeholder="000-00000000"></th>
                   </tr>
                   <tr>
                       <th><label for="repName">Representative Name</label></th>
                       <th><input type="text"  name="repname" placeholder=" Representative Full Name"></th>
                   </tr>
                   <tr>
                       <th><label for="repIC">Representative IC Number</label></th>
                       <th><input type="text"  name="repnum" placeholder="000000-00-0000"></th>
                   </tr>
                   <tr>
                       <th><label for="memEmail">Email</label></th>
                       <th><input type="email"  name="mem_email" placeholder="abc@gmail.com"></th>
                   </tr>
                   <tr>
                       <th><label for="memPwd">Password</label></th>
                       <th><input type="password"  name="mem_password"></th>
                   </tr>
                   <tr>
                       <th><label for="memPwd2">Confirm Password</label></th>
                       <th><input type="password"name="mem_password"></th>
                   </tr>
			</tbody>
		</table>
		
		<input  type="submit" value= "submit" class="btn btn-outline-primary">
        <input type="reset"  value = "reset" class="btn btn-outline-primary">
	</form>
</body>
</html>
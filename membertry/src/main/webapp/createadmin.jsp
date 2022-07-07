<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin list</title>
</head>

<style>

*:focus {
	outline: none;
}
body{
	padding:0; 
	margin:0;
	background: #DDD;
	
}

.container{
	 	height: 500px;
        background-color: black;/* For browsers that do not support gradients */
 
}
.container-fluid{
  margin-left: 12%;
  font-family: 'Times New Roman', Times, serif;
  
  
}
a.btn1,a.btn2,a.btn3,a.btn4,a.btn5,a.btn6,a.btn7,a.btn8{
	height:50px;
	text-align: center;
}



a:link{
  background-color: #0abcdb;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  font-size:11px;
  
}
a:hover, a:active {
    background-color: rgb(247, 249, 250);
  }
  
  a{
    color: rgb(5, 5, 5);
  }
  
  h5{
    color:black;
    font-size:16px;
    padding-bottom:-5em;
  }
  
  h1{
      text-align:center;
      padding-top:5px;
  }
  .logo{
	display: block;
  	margin-left: auto;
  	margin-right: auto;
  	width:70%;
  	border-radius: 150px;
}

#login-box{
position: relative;
	margin: 5% auto;
	width: 600px;
	height: 650px;
	background: #FFF;
	border-radius: 2px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);

}

.left {
	position: absolute;
	top: 0;
	left: 0;
	box-sizing: border-box;
	padding: 40px;
	width: 300px;
	height: 400px;
}
h1 {
	margin: 0 0 20px 0;
	font-weight: 300;
	font-size: 28px;
}

input[type="submit"]:hover, input[type="submit"]:focus {
	opacity: 0.8;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.4);
	transition: 0.1s ease;
}

input[type="submit"]:active {
	opacity: 1;
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.4);
	transition: 0.1s ease;
}

</style>
<body>

<!-- SIDEBAR -->
        <div class="container" style="padding:0; margin:0; height:150%;width:200px;background-color:#0abcdb;position:fixed!important;z-index:1;overflow:fixed">
         <img class="logo" alt="" src="img/img.jpeg">
         
            <h3 style="text-align: center;  color: rgb(2, 2, 2);">WELCOME</h3>
            <hr style="height:2px;border-width:0;color:BLACK;background-color:BLACK">
            <a href="index.html" class="btn2" style="display:block;">HOME </a>
            <a href="createadmin.jsp" class="btn4" style="display:block;">CREATE ADMIN</a>
            <a href="listadmincontroller" class="btn4" style="display:block;">LIST ADMIN</a>
            <a href="createmember.jsp" class="btn5" style="display:block;">CREATE NEW MEMBER</a>
            <a href="listmembercontroller" class="btn5" style="display:block;">LIST MEMBER</a>
            <a href="#" class="btn5" style="display:block;">VALIDATE APPLICATION</a>
            <a href="#" class="btn5" style="display:block;">MANAGE PROFILE</a>
            
            <hr style="height:2px;border-width:0;color:BLACK;background-color:BLACK">
            <a href="#" class="btn5" style="display:block;">LOGOUT</a>

        </div>
        
        <!-- TOPBAR -->      
        <div style=" background-color: #043a9f; height:100px; color:blue; padding-left:70px; ">
            <h1 style="text-align: center; color: rgb(2, 2, 2);">ADMIN</h1>
        </div>

        <!-- CONTENT -->
        <div class="container-fluid">
           
        </div>


<a href = "listadmincontroller">Admin List</a>
<div id= "login-box">
 <form action="createadmincontroller" method="post" class="left">
 <h1>Create Admin</h1>
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
                       <th><label for="supervisorid">Supervisor ID</label>
                       <th><input type="number"name="supervisorid"></th>
                       
                       
                       
                       
                      <!--  <th> <input type= "radio" name= "supervisorid" value ="yes">YES</th>
                             
                          <th>  <input type= "radio" name= "supervisorid" value ="no">NO</th>--->
                       
                  
                   </tr>
                   
			</tbody>
		</table>
		
		<input  type="submit" value= "submit" class="btn btn-outline-primary">
        <input type="reset"  value = "reset" class="btn btn-outline-primary">
	</form>
	</div>
<script>   		

if(supervisorid == 0)
	{
		<% %>
	}

  </script>
  
   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fill your I9 from here!!</title>
<style type="text/css">
.asterisk {
   color: red;
}

</style>
</head>
<form action="i9form.jsp" method="post">
<body>
<fieldset>
<legend style="color:red">Employement Eligibilty form</legend>
<strong>Section1. Employee Information and Verification</strong> <br><br>
<span class="asterisk" color="red">*</span>Last Name: <input type="text" name="lastname"><br><br>
<span class="asterisk" color="red">*</span>First Name:<input type="text" name="firstname"><br><br>
<span class="asterisk" color="red">*</span>GWorld: <input type="text" name="GWorld"><br><br>

<span class="asterisk" color="red">*</span>Dept No: <input type="text" name="DeptNo"><br><br>
<!-- Street Address : <input type="text" name="streetAdd"/><br><br>
Street Name : <input type="text" name="streetNum"/><br><br>
ZIP :<input type="text" name="zip"><br><br>
City :<input type="text" name="city"/><br><br>
State :<input type="text" name="state"/><br><br> -->

Social Security Number: <input typr="text" name="ssn"><br><br>
<span class="asterisk" color="red">*</span><strong> I atleast, under penality of prejury, that i am (check one of the following): </strong><br><br>
<input type="radio" name="group1" value="A citizen or national of United states"/> A citizen or national of United states<br><br>
<input type="radio" name="group1" value="A Lawful permanant Resident"/> A Lawful permanant Resident<br><br>
<input type="radio" name="group1" value="An alien authorised to work"/> An alien authorised to work<br><br>
<span class="asterisk" color="red">*</span>Select your Employer :<select name="employer">
					<option>UPD</option>
					<option>Marvin Centre</option>
					<option>Tompkins</option>
					</select><br><br>
<input type="submit" value="submit">					
					
</fieldset>

</body>
</form>
</html>
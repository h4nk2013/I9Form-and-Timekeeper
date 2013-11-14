<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employer's login form</title>
<style type="text/css">
.asterisk {
   color: red;
}

</style>
<script>
function validateEmployeeForm()
{
var x=document.employeForm.firstname.value;
if (x==null || x=="")
  {
  alert("First name must be filled out");
  return false;
  }
}
</script>
</head>
<body>
<form name="employeForm" action="EmployerRegPage.jsp" method="post" onsubmit="return validateEmployeeForm()">
<fieldset>
<legend style="color : Red">Employer Login Form</legend>

<span class="asterisk" color="red">*</span>First Name : <input type ="text" name ="firstname" /> <br><br>
<span class="asterisk" color="red">*</span>Last Name  : <input type ="text" name="lastname" /> <br><br>
<span class="asterisk" color="red">*</span>GWID   :<strong>G</strong> <input type="text" name="gwid"/> <br><br>
<span class="asterisk" color="red">*</span>Email id   : <input type ="text" name="email" />  <br><br>
<span class="asterisk" color="red">*</span>Department Name :<select name="departmentName"> 
				<option></option>
				<option>UPD</option>	
				<option>Marvin Centre</option>
				<option>Tompkin's SEAS </option>
				</select><br><br>
<span class="asterisk" color="red">*</span>Department Number :<input type="text" name="departmentNo"><br><br>				
<span class="asterisk" color="red">*</span>User Name  : <input type="text" name="username" /> <br><br>
<span class="asterisk" color="red">*</span>Password   : <input type="password" name="password"/> <br><br>
<span class="asterisk" color="red">*</span>ReEnter-Password   : <input type="password" name="reEnterpassword"/> <br><br>
				
</fieldset>

<input type ="submit" value="submit">

</form>




</body>
</html>
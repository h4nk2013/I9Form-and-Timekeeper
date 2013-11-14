<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Here!!!</title>
</head>
<body>
<form action="reg.jsp" method="post">
<fieldset>
<legend style="color:red"> Student Login Form</legend>
First Name : <input type ="text" name ="firstname" /> <br><br>
Last Name  : <input type ="text" name="lastname" /> <br><br>
GWID       : <strong>G</strong> <input type="text" name="gwid"/> <br><br>
Email id   :<input type ="text" name="email" /> <br><br>
Street Address : <input type="text" name="streetAdd"/><br><br>
Street Name : <input type="text" name="streetNum"/><br><br>
ZIP :<input type="text" name="zip"><br><br>
City :<input type="text" name="city"/><br><br>
State :<input type="text" name="state"/><br><br>
Phone :<input type="text" name="Phone"/><br><br>
User Name  : <input type="text" name="username" /> <br><br>
Password   : <input type="password" name="password"/> <br><br>
Re-enter password : <input type="password" name="reEnterpassword"><br><br><br>
</fieldset>


<input type ="submit" value="submit">
</fieldset>

</form>

</body>
</html>
<html>
<head>
<script>
function validateStudentLoginForm()
{
var x=document.studentFrom.username.value;
if (x==null || x=="")
  {
  alert("Please enter UserName");
  return false;
  }
 var password= document.studentFrom.password.value;
 if (password==null || password=="")
 {
 alert("Please enter password");
 return false;
 }
}
function validateEmployerLoginForm()
{
var x=document.employerFrom.username2.value;
if (x==null || x=="")
  {
  alert("Please enter UserName");
  return false;
  }
 var password= document.employerFrom.password2.value;
 if (password==null || password=="")
 {
 alert("Please enter password");
 return false;
 }
}

</script>
<title> Welcome to login page</title>
</head>
<body>
<img alt="picture1" src="Images/index.jpg" height="200" width="1000">


<form name="studentFrom" action="welcome.jsp" method="post" onsubmit="return validateStudentLoginForm()">
<fieldset style="width: 200px; height: 180px;">
<legend style="color: red">Login For student</legend>
User Name :<input type="text" name="username" /> <br> <br>
Password :<input type="password" name="password"> <br><br>
<input type="submit" value="submit"> 
</fieldset>
</form>

<form name="employerFrom" action="Employerwelcome.jsp" method="post" onsubmit="return validateEmployerLoginForm()">
<fieldset style="width: 200px; height: 180px;">
<legend style="color: red">Login For Employer</legend>
User Name :<input type="text" name="username2" /> <br> <br>
Password :<input type="password" name="password2"> <br><br>
<input type="submit" value="submit"> 
</fieldset>
<br><br>
</form>


 <p style="color:red"> If you are a new student, please click here</p><a href="LoginPageForStudent.jsp"><u>New User</u></a>
 <p style="color:red"> If you are employer, please click here</p> <a href="LoginPageForEmployer.jsp"><u>New User</u></a>

</body>
</html>
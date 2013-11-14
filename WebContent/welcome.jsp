
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
<title>
Checking Login details!!!!!!
</title>
<style type="text/css">
.tst1 {padding: 40px; background-color: skyblue;}

</style>


<%
String userid=request.getParameter("username");
session.putValue("userid",userid);
String pwd=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from student where UserName='"+userid+"'");

if(rs.next())
{
		
if(rs.getString(12).equals(pwd))

{%>
<marquee behavior="slide" direction="left"> Welcome <%=userid%> you have successfully created login!! </marquee>
</head><br><br>
<img alt="picture1" src="Images/GWU.jpg" height="200" width="1000"><br><br>
<fieldset style="width: 200px; height: 75px;">
<legend style="color:red">Are you recently started working in campus?</legend>
<a href="createNewI9form.jsp"><u><strong>If yes Please Clicke here to Fill your I9 form</strong></u></a>
</fieldset><br><br>
<fieldset style="width: 200px; height: 50px;">
<legend style="color:red">Do you want to Clock In?? </legend>
<a href="clockIn.jsp"><u>Click here to Clock-In</u></a><br><br>
</fieldset>
<fieldset style="width: 200px; height: 50px;">
<legend style="color:red">Do you want to clockOut??</legend>
<a href="clockOut.jsp"><u>Click here to Clock-out</u></a><br><br>
</fieldset>
<fieldset style="width: 200px; height: 50px;">
<legend style="color:red">Check Your timeSheet</legend>
<a href="checkTimeSheet.jsp"><u>Click here to check</u></a><br><br>
</fieldset>
</html>
<%

}
else
{
out.println("Invalid UserName or Password, please try again");
}
}
else{
	out.println("Invalid UserName or Password, please try again");
}

%>


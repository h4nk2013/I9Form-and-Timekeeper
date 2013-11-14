<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checking your login details</title>

<body>
<img alt="picture1" src="Images/EmployerPage.png" height="300" width="1000"><br><br>
</body>

<%
String userid=request.getParameter("username2");
session.putValue("userid",userid);
String pwd=request.getParameter("password2");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from employer where UserName='"+userid+"'");
if(rs.next())
{
if(rs.getString(8).equals(pwd))
{%>
<marquee behavior="slide" direction="left" style="color: red"> Welcome <%=userid%>!! </marquee>
</head>
<%
}
else
{
out.println("Invalid UserName or password try again");
}
}


%>
<form name="employer" method="get">
<fieldset style="width: 800px; height: 50px;">
<legend style="color: red">I-9 form Info</legend>
<a href="getAllI9request.jsp">Click here to get New I-9 reuest</a>
</fieldset>
<fieldset style="width : 800px; height: 50px;">
<legend style="color: red"> Timesheet Info</legend>
<a href="getTimeSheetInfo.jsp">Click here to check TimeSheet Info</a>
</fieldset>
</form>
</html>

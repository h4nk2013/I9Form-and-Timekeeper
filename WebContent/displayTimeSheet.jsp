<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Time Sheet</title>
</head>
<body>
<%
String strGwid = request.getParameter("GWorld");
String strDay1 = request.getParameter("day1");
String strmonth1 = request.getParameter("month1");
String stryear1 = request.getParameter("year1");
String strDay2 = request.getParameter("day2");
String strmonth2 = request.getParameter("month2");
String stryear2 = request.getParameter("year2");

System.out.println("strGwid----------->"+strGwid);
System.out.println("strDay1----------->"+strDay1);
System.out.println("strmonth1----------->"+strmonth1);
System.out.println("stryear1----------->"+stryear1);
System.out.println("strDay2----------->"+strDay2);
System.out.println("strmonth2----------->"+strmonth2);
System.out.println("stryear2----------->"+stryear2);

try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from clock_in_out where GWID='"+strGwid+"' and clockInDate='"+stryear1+"-"+strmonth1+"-"+strDay1+"' and clockOutDate='"+stryear2+"-"+strmonth2+"-"+strDay2+"'");
if(rs.next()){
	
	%>
	<table border="2" cellspacing="1" cellpadding="3">
	<tr>
	<th>GWorld</th>
	<th>Total Hours</th></tr>
	<tr>
	<td><%=strGwid%></td>
	<td><%=rs.getString(7)%></td></tr></table><%
	
}
else{
	
	out.println("Please select proper dates");
}
rs.close();
st.close();
con.close();
} catch (Exception ex) {
out.print("Problem while displaying timesheet"+ex.getMessage());
} 



%>
</body>
</html>
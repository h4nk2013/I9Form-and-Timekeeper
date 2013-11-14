<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<html>
<head>

<title>Clock out record submitted</title>
</head>
<body>
<p style="color: Grey"> Clock out recorded </p>
</body>
</html>
<%
String GWorld = request. getParameter("GWorld");
String DeptNo = request. getParameter("DeptNo");
String clockOutTime = request. getParameter("time");

String ClockOutDate= request.getParameter("date");
System.out.println("clockOutTime------->"+clockOutTime);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs;
int i=st.executeUpdate("UPDATE clock_in_out SET clockOutTime ='"+clockOutTime+"',clockOutDate='"+ClockOutDate+"' WHERE GWID='"+GWorld+"' and DepartmentNumber='"+DeptNo+"' ");
rs=st.executeQuery("select * from clock_in_out where GWID='"+GWorld+"'");
if(rs.next()){
String clockInTime = rs.getString(3);
float a = Float.parseFloat(clockOutTime);
float b =Float.parseFloat(clockInTime);
float c =a-b;
String totalHours = Float.toString(c);
int j=st.executeUpdate("UPDATE clock_in_out SET TotalHours='"+totalHours+"'");

}


 %>
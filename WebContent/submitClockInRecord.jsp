<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<html>
<head>

<title>Clock in record submitted</title>
</head>

<body>

</body>

<%
String GWorld = request. getParameter("GWorld");
String DeptNo = request. getParameter("DeptNo");
String clokIntime = request. getParameter("time");
String clockOutTime = "";
String clockInDate=request.getParameter("date");
String clockOutDate=request.getParameter("date");//we are seeting clock out time also
String Totalhours="";
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs;
//rs=st.executeQuery("SELECT * FROM clock_in_out WHERE GWID='"+GWorld+"'ORDER by clockOutTime  LIMIT 1");

rs=st.executeQuery("SELECT * FROM clock_in_out WHERE GWID='"+GWorld+"'ORDER by clockOutTime  LIMIT 1");
if(rs.next()){
System.out.println("rs----------->"+rs);
String strClockOut=rs.getString(4);
//String strClockOut="";
//System.out.println("rs--------->"+rs);
System.out.println("strClockOut-------->"+strClockOut);
if(strClockOut.length()==0){	
	System.out.println("hiiiiiiiiiiiiiiiii");	
out.println("Please clock out first");
}

else{
	
	int i=st.executeUpdate("insert into clock_in_out values ('"+GWorld+"','"+DeptNo+"','"+clokIntime+"','"+clockOutTime+"','"+clockInDate+"','"+clockOutDate+"','"+Totalhours+"')");
%>
<p style="color: Grey"> Clock In recorded </p>
<%
}%>

<%
}

}
catch (Exception ex) {
	out.print("Problem while submitting clock In Time-->"+ex.getMessage());
	} 
 %>
 
 
 </html>
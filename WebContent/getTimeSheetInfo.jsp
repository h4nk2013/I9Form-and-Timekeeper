<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function GiveMessage(){
	
	alert("Time Sheet Updated")
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Time Sheet</title>
</head>
<body>
<% 
try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
	Statement st= con.createStatement();
	ResultSet rs=st.executeQuery("select * from clock_in_out where DepartmentNumber=111");
	while(rs.next()){
		%>
		
	
<form name="TimeSheetForEmployer" action="test.jsp">	
<table border="2" cellspacing="1" cellpadding="3">
	<tr><th>GWID</th>
	<th>Clock-In-Time</th>
	<th>Clock-Out-Time</th>
	<th>ClockInTime</th>	
	<th>ClockOutTime</th>
	<th>Validate</th>
	</tr>
	<tr>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td>	
	<input type="button" value="Reject" name="reject" onclick="GiveMessage()"></td>
	</tr>
	
	</table>
	</form>
<%	
}

}
catch(Exception e){
}
%>
</body>
</html>
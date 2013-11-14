<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pending I-9 froms</title>
</head>
<h1 style="color: red"> Please check new I-9 froms</h1>
<script>

function myFunction(){
	//var gwid=document.getI9form.name.value;
	//document.getElementById("i9info").rows[i].columns[j].innerHTML
}
</script>

<body>

<form name="getI9form" action="updateEmployeeTable.jsp" method="post">
<table name="i9info" border="2" cellspacing="1" cellpadding="3">
<tr>
<th>GWID</th>
<th>Last Name</th>
<th>First Name</th>
<th>Visa Status</th>
<th>Validate</th>
</tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from employee");
while(rs.next())
{
%>
<tr>
<td><input type="text" name="name" value="<%=rs.getString(1)%>"></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td ><%=rs.getString(6)%></td>
<td><select onchange="myFunction()">
<option value="blank"  ></option>	
  <option value="ok">Ok</option>
  <option value="cancle">Cancle</option></select>
   </td>
</tr>
<%} %>
<%
rs.close();
st.close();
con.close();
} catch (Exception ex) {
out.print("Problem while getting I9 form"+ex.getMessage());
} %>
</table> 
<input type="submit" value="submit">
</form>
</body>
</html>
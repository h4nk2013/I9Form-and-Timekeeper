<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<html>
<head>

<h1>Congratulation, your I9 form has been successfully submitted</h1> 

</head>


</html>
<%
String gwid= request. getParameter("GWorld");
String LastName = request. getParameter("lastname");
String FirstName = request. getParameter("firstname");
String DeptNo = request. getParameter("DeptNo");
String ssn = request. getParameter("ssn");
String visastatus = request. getParameter("citizen");
String EmployerName = request. getParameter("employer");
String validation="";
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into employee values ('"+gwid+"','"+LastName+"','"+FirstName+"','"+DeptNo+"','"+ssn+"','"+visastatus+"','"+EmployerName+"','"+validation+"')");

%>
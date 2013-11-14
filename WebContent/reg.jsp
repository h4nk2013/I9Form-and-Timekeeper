<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>


<%

String FirstName = request. getParameter("firstname");
String LastName = request. getParameter("lastname");
String gwid = request. getParameter("gwid");
String Email = request. getParameter("email");

String streetAdd = request. getParameter("streetAdd");
String streetNum = request. getParameter("streetNum");
String zip = request. getParameter("zip");
String city = request. getParameter("city");
String state = request. getParameter("state");
String Phone = request. getParameter("Phone");
String username = request. getParameter("username");
String password = request. getParameter("password");
String reEnterpassword = request. getParameter("reEnterpassword"); 
try{
 Class.forName("com.mysql.jdbc.Driver");
 java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
 Statement st= con.createStatement();
 ResultSet rs;
 int i=st.executeUpdate("insert into student values ('"+gwid+"','"+FirstName+"','"+LastName+"','"+Email+"','"+streetAdd+"','"+streetNum+"','"+zip+"','"+city+"','"+state+"','"+Phone+"','"+username+"','"+password+"','"+reEnterpassword+"')");
}
catch (Exception ex) {
	out.print("Problem while registration"+ex.getMessage());
	} 
%>
<html>
<head>
<a href="createNewI9form.jsp"> Click here to clockIn/out or to create I9 form</a>
</head>
</html>




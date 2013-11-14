<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<head>
<h1 style="color: red"> Congratulation, your profile has been created</h1> 
</head>
<body>

</body>
</html>
<% 
String gwid= request. getParameter("gwid");
String FirstName = request. getParameter("firstname");
String LastName = request. getParameter("lastname");
String email = request. getParameter("email");
String departmentName = request. getParameter("departmentName");
String DeptNo = request. getParameter("departmentNo");
String username = request. getParameter("username");
String password = request. getParameter("password");
String reEnterpassword = request. getParameter("reEnterpassword"); 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/University","root","root");
Statement st= con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into employer values ('"+gwid+"','"+FirstName+"','"+LastName+"','"+email+"','"+departmentName+"','"+DeptNo+"','"+username+"','"+password+"','"+reEnterpassword+"')");


%>
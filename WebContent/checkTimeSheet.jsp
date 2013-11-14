<html>

<style>
body {
background-color:#cccccc;
}
.asterisk {
   color: red;
}


</style>


<body>
<form name="timesheet" action="displayTimeSheet.jsp">
<span class="asterisk" color="red">*</span>GWorld: <input type="text" name="GWorld"><br><br>
 <fieldset style="width: 300px; height: 100px;"><legend style="color :red">Select From & To Date</legend>
 From Date : <select name="month1"><option>Month</option>
 			<%int j=1;
 			 for(j=1;j<=12;j++){%>
 			 <option><%=j%>
 				<% 
 				}			 
 			 %></option>
 			 </select>
 			 <select name="day1"><option>Day</option>
 			 <%int i=1;
 			 for(i=1;i<=30;i++){%>
 			 <option><%=i%>
 				<% 
 				}			 
 			 %></option>
 			 </select>
 			 <select name="year1"><option>Year</option>
 			 <option>2012</option>
 			 		 
 			 </select></br></br>
 			 
To Date : 	<select name="month2"><option>Month</option>
 			<%int M=1;
 			 for(M=1;M<=12;M++){%>
 			 <option><%=M%>
 				<% 
 				}			 
 			 %></option>
 			 </select>
 			 <select name="day2"><option>Day</option>
 			 <%int N=1;
 			 for(N=1;N<=30;N++){%>
 			 <option><%=N%>
 				<% 
 				}			 
 			 %></option>
 			 </select>
 			 <select name="year2"><option>Year</option>
 			 <option>2012</option>
 			 		 
 			 </select></br></br>
 					 
 </fieldset></br></br>			 
<input type="submit" name="submit" value="submit">
</form>

</body>
</html>
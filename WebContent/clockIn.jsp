
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Record Clock In</title>
</head>
<script type="text/javascript">
function getTime()
{
	
	var d = new Date();
	var curr_hour = d.getHours();
	var curr_min = d.getMinutes();
	
	document.forms['clockInPage'].time.value = curr_hour+"."+curr_min;
	//document.forms['clockOutPage'].time.value = month+"-"+date+"-"+year;
	return false;
	//alert("hiii11")
	}
function getDate(){
	var d = new Date();
	var year = d.getFullYear();
	var month = d.getMonth();
	var date= d.getDate();
	document.forms['clockInPage'].date.value = year+"-"+date+"-"+month;	
	
}
</script>

<style>
body {
background-color:#cccccc;
}
.asterisk {
   color: red;
}


</style>


<body>
<form name="clockInPage" action="submitClockInRecord.jsp">
<span class="asterisk" color="red">*</span>GWorld: <input type="text" name="GWorld"><br><br>
<span class="asterisk" color="red">*</span>Dept No: <input type="text" name="DeptNo"><br><br>
Current time :<input type="text" name="time"><button onclick="getTime()">Get Time</button> <br><br>
 Date :<input type="date" name="date"><button onclick="getDate()">Get Date</button> <br><br>
<input type="submit" name="submit" value="submit">
</form>

</body>
</html>
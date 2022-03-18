<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#172727" text="#FFFFFF">
<%
if session("uid")="" then
%>
<script>
alert("Please login to continue.")
window.open("default.asp","_self")
</script>
<%
end if
%>
<div style="height:700px;width:100%;">
<div style="height:200px;width:100%;background-color:#172727">
<h1 style="position:absolute;left:23%;top:5%;font-family:Cambria Math;font-size:50px">RETAIL STORE BILLING SYSTEM</h1>
</div>
<div style="float:left;height:500px;width:20%;background-color:#3B945E">

<input type="button" value="Home"
onclick="window.open('home.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Login Page" 
onclick="window.open('default.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Create Customer" 
onclick="window.open('customer.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Billing" 
onclick="window.open('billing.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Stock Entry" 
onclick="window.open('stock.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Change Password" 
onclick="window.open('password.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#325052;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#325052'">

<input type="button" value="Logout" 
onclick="window.open('logout.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">
</div>
<div style="float:left;height:500px;width:80%;background-color:#65CCB8;">
<form name="f1" method="post" action="password.asp" style="position:relative;left:5%;top:5%;font-size:30px;font-family:Calibri;">
<table style="padding-left:100px;">
<tr colspan="2" height=50>
<b style="color:#172727;">Change Password</b>
</tr>
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from clerk where userid='"&session("uid")&"'"
rs.open sql,con,2,2
%>
<tr height=30 style="font-size:18px;">
<td width=50%>User Id</td>
<td><input type="text" style="background-color:#65CCB8;" readonly name="t1" value="<%=rs.fields(0)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>Password</td>
<td><input type="text" name="t2" value="<%=rs.fields(1)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>User Name</td>
<td><input type="text"  style="background-color:#65CCB8;" readonly name="t3" value="<%=rs.fields(2)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>User Address</td>
<td><input type="text" style="background-color:#65CCB8;" readonly name="t4" value="<%=rs.fields(3)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>Mobile No</td>
<td><input type="text" style="background-color:#65CCB8;" readonly name="t5" value="<%=rs.fields(4)%>"></td>
<td>
<input type="hidden" name="b">
</td>
</tr>
<tr height=30>
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" onclick="f1.b.value='Edit'" value="Change Password" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</td>
</tr>
<%
rs.close
con.close
%>
<%
if request.form("b")="Edit" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from clerk where userid='"&session("uid")&"'"
rs.open sql,con,2,2
rs.fields(1)=request.form("t2")
rs.update
%>
<script>
alert("Password changed successfully.")
window.open("password.asp","_self")
</script>
<%
rs.close
con.close
end if
%>
</table>
</form> 
</div>
</div>
</body>
</html>
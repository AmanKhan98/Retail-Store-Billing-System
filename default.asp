<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#172727" text="#FFFFFF">
<div style="height:700px;width:100%;">
<div style="height:200px;width:100%;background-color:#172727">
<h1 style="position:absolute;left:23%;top:5%;font-family:Cambria Math;font-size:50px">RETAIL STORE BILLING SYSTEM</h1>
</div>
<div style="height:370px;width:100%;background-color:#469F81">
<form method="post" action="default.asp" style="position:relative;left:32%;top:20%;font-size:30px;font-family:Calibri;">
<table>
<tr colspan="2" height=80>
Welcome... Please login to use system.
</tr>
<tr>
<td width=50% style="padding-left:80px;font-size:18px;">
User Id
</td>
<td><input type="text" size="20" name="t1">
</td>
</tr>
<tr>
<td style="padding-left:80px;font-size:18px;">
Password
</td>
<td>
<input type="password" size="20" name="t2">
</td>
</tr>
<tr>
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" value="Login" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
<input style="background-color:#3B9360;color:#e7e3d4;" type="reset" value="Clear" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</td>
</tr>
</table>
</form>
<%
if request.totalbytes>0 then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from clerk where userid='"&request.form("t1")&"' and password='"&request.form("t2")&"'"
rs.open sql,con
if not rs.eof then
session("uid")=request.form("t1")
%>
<script>
alert("Login successful.")
window.open("home.asp","_self")
</script>
<%
else
%>
<script>
alert("Invalid Login Id or Password.")
</script>
<%
end if
rs.close
con.close
end if
%>
</div>
<div style="height:130px;width:100%;background-color:#172727;color:#879C9C;font-family:Calibri Light;font-size:14px;">
<a style="position:relative;left:94%;color:#3B945E" href="manager.asp">Admin Login</a><br>
Developed by -
<p>
AMAN KHAN<br>
Roll No.-02<br>
B.Sc.IT Part-III<br>
Gossner College, Ranchi
</p>
</div>

</div>
</body>
</html>
<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#242544" text="#F0F0F0">
<div style="height:700px;width:100%;">
<div style="height:200px;width:100%;background-color:#242544">
<h1 style="position:absolute;left:23%;top:5%;font-family:Cambria Math;font-size:50px">RETAIL STORE BILLING SYSTEM</h1>
</div>
<div style="height:370px;width:100%;background-color:#2D9CCA">
<form method="post" action="manager.asp" style="position:relative;left:32%;top:20%;font-size:30px;font-family:Calibri;">
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
<input style="background-color:#474866;color:#F0F0F0;" type="submit" value="Login" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
<input style="background-color:#474866;color:#F0F0F0;" type="reset" value="Clear" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
</td>
</tr>
</table>
</form>
<%
if request.totalbytes>0 then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from manager where userid='"&request.form("t1")&"' and password='"&request.form("t2")&"'"
rs.open sql,con
if not rs.eof then
session("mid")=request.form("t1")
%>
<script>
alert("Login successful.")
window.open("mhome.asp","_self")
</script>
<%
else
%>
<script>
alert("Invalid Login Id or Password.")
window.open("manager.asp","_self")
</script>
<%
end if
rs.close
con.close
end if
%>
</div>
<div style="height:130px;width:100%;background-color:#242544;color:#888995;font-family:Calibri Light;font-size:14px;">
Developed by -<br>
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
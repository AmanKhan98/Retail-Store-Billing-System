<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#242544" text="#F0F0F0">
<%
if session("mid")="" then
%>
<script>
alert("Please login to continue.")
window.open("manager.asp","_self")
</script>
<%
end if
%>
<div style="height:700px;width:100%;">
<div style="height:200px;width:100%;background-color:#242544">
<h1 style="position:absolute;left:23%;top:5%;font-family:Cambria Math;font-size:50px">RETAIL STORE BILLING SYSTEM</h1>
</div>
<div style="float:left;height:500px;width:20%;background-color:#29658A">

<input type="button" value="Home"
onclick="window.open('mhome.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Login Page" 
onclick="window.open('index.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Create Product" 
onclick="window.open('mproduct.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Create User" 
onclick="window.open('muser.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Report" 
onclick="window.open('mreport.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Modify Manager Account" 
onclick="window.open('mpassword.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Modify User Account" 
onclick="window.open('moduser.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#3E4074;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#3E4074'">

<input type="button" value="Delete User Account" 
onclick="window.open('deluser.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

<input type="button" value="Logout" 
onclick="window.open('mlogout.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">
</div>
<div style="float:left;height:500px;width:80%;background-color:#2D9CCA;">
<form name="f1" method="post" action="moduser.asp" style="position:relative;left:5%;top:5%;font-size:30px;font-family:Calibri;">
<table style="padding-left:100px;">
<tr colspan="2" height=50>
<b style="color:#242544;">Modify User Account</b>
<p style="font-size:16px;color:#242544;">(Enter the User ID of the account you want to modify.)<p></tr>
<tr height=30 style="font-size:18px;">
<td width=50%>
User Id
</td>
<td><input type="text" size="20" name="t1">
<input type="hidden" name="b">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td colspan="2" style="text-align:right;">
<input style="background-color:#474866;color:#F0F0F0;" type="submit" onclick="f1.b.value='Search'" value="Search User" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
<input style="background-color:#474866;color:#F0F0F0;" type="reset" value="Clear" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
</td>
</tr>
<%
if request.form("b")="Search" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from clerk where userid='"&request.form("t1")&"'"
rs.open sql,con,2,2
if not rs.eof then
%>
<tr height=30 style="font-size:18px;">
<td style="padding-top:30px;">User Id</td>
<td style="padding-top:30px;"><input type="text" readonly name="t2" value="<%=rs.fields(0)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>Password</td>
<td><input type="text" name="t3" value="<%=rs.fields(1)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>User Name</td>
<td><input type="text"  name="t4" value="<%=rs.fields(2)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>User Address</td>
<td><input type="text" name="t5" value="<%=rs.fields(3)%>"></td>
</tr>
<tr height=30 style="font-size:18px;">
<td>Mobile No</td>
<td><input type="text" name="t6" value="<%=rs.fields(4)%>"></td>
</tr>
<tr height=30>
<td colspan="2" style="text-align:right;">
<input style="background-color:#474866;color:#F0F0F0;" type="submit" onclick="f1.b.value='Edit'" value="Edit User" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
</td>
</tr>
<%
else
%>
<script>
alert("Record not found")
</script>
<%
end if
rs.close
con.close
end if
%>
<%
if request.form("b")="Edit" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from clerk where userid='"&request.form("t2")&"'"
rs.open sql,con,2,2
rs.fields(1)=request.form("t3")
rs.fields(2)=request.form("t4")
rs.fields(3)=request.form("t5")
rs.fields(4)=request.form("t6")
rs.update
%>
<script>
alert("User account updated successfully.")
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

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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#3E4074;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#3E4074'">

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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#242544;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#242544'">

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
<form method="post" action="mproduct.asp" style="position:relative;left:5%;top:5%;font-size:30px;font-family:Calibri;">
<table style="padding-left:100px;">
<tr colspan="2" height=50>
<b style="color:#242544;">Create New Product</b>
<p style="font-size:16px;color:#242544;">(Product Code and Product Name are mandatory fields.)<p></tr>
<tr height=30 style="font-size:18px;">
<td width=32%>
Product Code
</td>
<td>
<input type="text" required size="20" name="t1">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Product Name
</td>
<td>
<input type="text" required size="20" name="t2">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Category
</td>
<td>
<select name="t3">
<option value="Clothing">Clothing</option>
<option value="Home Care">Home Care</option>
<option value="Kitchen Ware">Kitchen Ware</option>
<option value="Electronics">Electronics</option>
<option value="Home Appliances">Home Appliances</option>
<option value="Grocery">Grocery</option>
<option value="Stationery">Stationery</option>
</select>
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Brand
</td>
<td>
<input type="text" size="20" name="t4">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Description
</td>
<td>
<input type="text" size="50" name="t5">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Rate
</td>
<td>
<input type="text" size="20" name="t6">
</td>
</tr>
<tr height=30>
<td colspan="2" style="text-align:right;">
<input style="background-color:#474866;color:#F0F0F0;" type="submit" value="Create Product" onmouseover="this.style.backgroundColor='#5F6188'" 
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
sql="select * from product"
rs.open sql,con,2,2
rs.addnew
rs.fields(0)=request.form("t1")
rs.fields(1)=request.form("t2")
rs.fields(2)=request.form("t3")
rs.fields(3)=request.form("t4")
rs.fields(4)=request.form("t5")
rs.fields(5)=request.form("t6")
rs.update
%>
<script>
alert("New product created successfully.")
window.open("mhome.asp","_self")
</script>
<%
rs.close
con.close
end if
%>
</div>
</div>
</body>
</html>

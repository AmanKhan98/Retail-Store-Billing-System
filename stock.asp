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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#325052;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#325052'">

<input type="button" value="Change Password" 
onclick="window.open('password.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Logout" 
onclick="window.open('logout.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">
</div>
<div style="float:left;height:500px;width:80%;background-color:#65CCB8;">
<form method="post" action="stock.asp" style="position:relative;left:5%;top:5%;font-size:30px;font-family:Calibri;">
<table style="padding-left:100px;">
<tr colspan="2" height=50>
<b style="color:#172727;">Stock Entry Process</b>
</tr>
<tr height=30 style="font-size:18px;">
<td width=50%>
Stock Code
</td>
<td><input type="text" style="background-color:#65CCB8;" readonly size="20" name="t1" value="<%=year(date())&month(date())&day(date())%>">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Product Code
</td>
<td>
<select name="t2">
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from product"
rs.open sql,con,2,2
do until rs.eof
%>
<option value="<%=rs.fields(0)%>"><%=rs.fields(0)%></option>
<%
rs.movenext
loop
rs.close
con.close
%>
</select>
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Stock
</td>
<td>
<input type="text" size="20" name="t3">
</td>
</tr>

<tr>
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" value="Update Stock" onmouseover="this.style.backgroundColor='#4BB879'" 
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
sql="select * from stock"
rs.open sql,con,2,2
rs.addnew
rs.fields(0)=request.form("t1")
rs.fields(1)=request.form("t2")
rs.fields(2)=request.form("t3")
rs.fields(3)=date()
rs.fields(4)=session("uid")
rs.update
rs.close
sql="select * from product where pcode='"&request.form("t2")&"'"
rs.open sql,con,2,2
rs.fields(6)=rs.fields(6)+cint(request.form("t3"))
rs.update
%>
<script>
alert("Product stock updated successfully")
window.open("stock.asp","_self")
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
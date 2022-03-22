<html>
<head>
<title>Retail Store Billing System
</title>
<script>
function product()
{
f1.t6.value=pn[f1.t5.selectedIndex]
f1.t7.value=rate[f1.t5.selectedIndex]
f1.t8.value=st[f1.t5.selectedIndex]
}
function amt()
{
if(parseInt(f1.t9.value)>parseInt(f1.t8.value))
{
alert("quantity must be less than stock available")
f1.t9.value=0
f1.t10.value=0
}
else
{
f1.t10.value=parseFloat(f1.t7.value)*parseFloat(f1.t9.value)
}
f1.t11.value=parseFloat(f1.t11.value)+parseFloat(f1.t10.value)
 tot=parseFloat(f1.t11.value)
 if(tot<1000)
 d=tot*.05
 if(tot<10000&&tot>=1000)
 d=tot*.10
 if(tot>=10000)
 d=tot*.20
f1.t12.value=d
}
</script>
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
<div style="height:850px;width:100%;">
<div style="height:200px;width:100%;background-color:#172727">
<h1 style="position:absolute;left:23%;top:5%;font-family:Cambria Math;font-size:50px">RETAIL STORE BILLING SYSTEM</h1>
</div>
<div style="float:left;height:600px;width:20%;background-color:#3B945E">

<input type="button" value="Home"
onclick="window.open('home.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Login Page" 
onclick="window.open('index.asp','_self')" 
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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#325052;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#325052'">

<input type="button" value="Stock Entry" 
onclick="window.open('stock.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

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
<div style="float:left;height:600px;width:80%;background-color:#65CCB8;">
<form name="f1" method="post" action="billing.asp" style="position:relative;left:5%;top:5%;font-size:30px;font-family:Calibri;">
<table style="padding-left:100px;">
<tr colspan="2" height=50>
<b style="color:#172727;">Create New Bill</b>
</tr>
<tr height=30 style="font-size:18px;">
<td width=50%>Bill Date</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t2" value="<%=date()%>">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Customer Code
</td>
<td>
<select name="t3">
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from customer"
rs.open sql,con
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
<input type="hidden" name="b">
</tr>
<tr height=30 style="font-size:18px;">
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" value="Bill Details" onclick="f1.b.value='bill'" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
<input style="background-color:#3B9360;color:#e7e3d4;" type="reset" value="Clear" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</td>
</tr>

<%
if(request.form("b"))="bill" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from bill"
rs.open sql,con,2,2
session("bno")=year(date())&month(date())&day(date())&hour(time())&minute(time())&second(time())
rs.addnew
rs.fields(0)=session("bno")
rs.fields(1)=request.form("t2")
rs.fields(2)=request.form("t3")
rs.fields(3)=session("uid")
rs.update
%>
<script>
alert("Please enter bill details.")
</script>
<%
rs.close
con.close
%>
<tr height=30 style="font-size:18px;">
<td>
Bill No
</td>
<td>
<input type="text" readonly style="background-color:#65CCB8;" size="20" name="t4" value='<%=session("bno")%>'>
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Product Code
</td>
<td>
<script>
pn=new Array()
st=new Array()
rate=new Array()
i=0
</script>
<select name="t5" onchange="product()">
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select pcode,pname,rate,stock from product"
rs.open sql,con
do until rs.eof
%>
<option value="<%=rs.fields(0)%>"><%=rs.fields(0)%></option>
<script>
pn[i]="<%=rs.fields(1)%>"
rate[i]="<%=rs.fields(2)%>"
st[i]="<%=rs.fields(3)%>"

i++
</script>
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
Product Name
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t6">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Product Rate
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t7">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Stock Available
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t8">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Quantity 
</td>
<td>
<input type="text"  size="20" name="t9" onchange="amt()">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Amount
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t10">
</td>
</tr>
<script>
f1.t6.value=pn[0]
f1.t7.value=rate[0]
f1.t8.value=st[0]
</script>
<tr height=30 style="font-size:18px;">
<td>
Grand Total
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t11" value="0">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Discount
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t12" value="0">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" value="Add Item" onclick="f1.b.value='add'" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</td>
</tr>
<%
end if
%>
<%
if(request.form("b"))="add" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from billdetails"
rs.open sql,con,2,2
rs.addnew
rs.fields(0)=session("bno")
rs.fields(1)=request.form("t5")
rs.fields(2)=request.form("t7")
rs.fields(3)=request.form("t9")
rs.fields(4)=request.form("t10")
rs.update
rs.close
sql="select stock from product where pcode='"&request.form("t5")&"'"
rs.open sql,con,2,2
rs.fields(0)=request.form("t8")-request.form("t9")
rs.update
%>
<script>
alert("Item added successfully.")
</script>
<%
rs.close
con.close
%>
<tr height=30 style="font-size:18px;">
<td>
Bill No
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t4" value='<%=session("bno")%>'>
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Product Code
</td>
<td>
<script>
pn=new Array()
st=new Array()
rate=new Array()
i=0
</script>
<select name="t5" onchange="product()">
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select pcode,pname,rate,stock from product"
rs.open sql,con
do until rs.eof
%>
<option value="<%=rs.fields(0)%>"><%=rs.fields(0)%></option>
<script>
pn[i]="<%=rs.fields(1)%>"
rate[i]="<%=rs.fields(2)%>"
st[i]="<%=rs.fields(3)%>"
i++
</script>
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
Product Name
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t6">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Product Rate
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t7">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Stock Available
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t8">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Quantity 
</td>
<td>
<input type="text"  size="20" name="t9" onchange="amt()">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Amount
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t10">
</td>
</tr>
<script>
f1.t6.value=pn[0]
f1.t7.value=rate[0]
f1.t8.value=st[0]
</script>
<tr height=30 style="font-size:18px;">
<td>
Grand Total
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t11"  value="<%=request.form("t11")%>">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
Discount
</td>
<td>
<input type="text" style="background-color:#65CCB8;" readonly size="20" name="t12" value="<%=request.form("t12")%>">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" value="Add Item" onclick="f1.b.value='add'" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td colspan="2" style="text-align:right;">
<input style="background-color:#3B9360;color:#e7e3d4;" type="submit" value="Generate Bill" onclick="f1.b.value='genbill'" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</td>
</tr>
<%
end if
%>
</table>
</form> 
<%
if(request.form("b"))="genbill" then
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select total,discount,netamount from bill where billno='"&session("bno")&"'"
rs.open sql,con,2,2
rs.fields(0)=request.form("t11")
rs.fields(1)=request.form("t12")
rs.fields(2)=cdbl(request.form("t11"))-cdbl(request.form("t12"))
rs.update
rs.close
con.close
%>
<script>
alert("Bill generated successfully.")
window.open("billgen.asp","_self")
</script>
<%
end if
%>
</div>
</div>
</body>
</html>

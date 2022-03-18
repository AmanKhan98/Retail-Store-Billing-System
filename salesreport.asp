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
onclick="window.open('default.asp','_self')" 
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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#3E4074;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#3E4074'">

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
<div style="float:left;height:500px;width:80%;background-color:#2D9CCA;font-family:Calibri;overflow:auto;">
<br><b style="font-size:30px;color:#242544;">Reports</b><br>
<p style="font-size:16px;color:#242544;">(Select the report you want to view.)<p><br>

<input type="button" value="Stock Report" 
onclick="window.open('stockreport.asp','_self')" 
style="height:40px;width:20%;font-size:18px;font-family:Calibri Light;background-color:#494B88;color:#F2F2F2;"
onmouseover="this.style.backgroundColor='#5F61AF'" 
onmouseout="this.style.backgroundColor='#494B88'">

<input type="button" value="Sales Report" 
onclick="window.open('salesreport.asp','_self')" 
style="height:40px;width:20%;font-size:18px;font-family:Calibri Light;background-color:#494B88;color:#F2F2F2;"
onmouseover="this.style.backgroundColor='#5F61AF'" 
onmouseout="this.style.backgroundColor='#494B88'">

<br>
<form method="post" action="salesreport.asp" style="position:relative;left:5%;top:5%;font-size:30px">
<table style="padding-left:100px;">
<tr colspan="2" height=30>
<b style="color:#242544;">View Sales Report</b>
</tr>
<tr height=30 style="font-size:18px;">
<td width=50%>
From Date
</td>
<td><input type="text" required size="20" placeholder="dd/mm/yyyy" name="t1" value="<%=date()%>">
</td>
</tr>
<tr height=30 style="font-size:18px;">
<td>
To Date
</td>
<td><input type="text" required size="20" placeholder="dd/mm/yyyy" name="t2" value="<%=date()%>">
</td>
</tr>
<tr height=30>
<td colspan="2" style="text-align:right;">
<input style="background-color:#474866;color:#F0F0F0;" type="submit" value="View Report" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
<input style="background-color:#474866;color:#F0F0F0;" type="reset" value="Clear" onmouseover="this.style.backgroundColor='#5F6188'" 
onmouseout="this.style.backgroundColor='#474866'">
</td>
</tr>
</table>
</form> 
<br>
<br>


<%
if request.totalbytes>0 then
%>
<table border="1" width=100%>
<tr style="background-color:#206D8D;">
<td>Bill No.</td>
<td>Bill Date</td>
<td>Customer Code</td>
<td>User Id</td>
<td>Total</td>
<td>Discount</td>
<td>Net Amount</td>
</tr>
<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from bill where billdate>=#"&request.form("t1")&"# and billdate<=#"&request.form("t2")&"#"
rs.open sql,con
do until rs.eof
%>
<tr>
<td><a href="billdetail.asp?bn=<%=rs.fields(0)%>"><%=rs.fields(0)%></a></td>
<td><%=rs.fields(1)%></td>
<td><%=rs.fields(2)%></td>
<td><%=rs.fields(3)%></td>
<td><%=rs.fields(4)%></td>
<td><%=rs.fields(5)%></td>
<%
if rs.fields(6)=0 then
%>
<td style="background-color:F2F2F2;color:#DC292E;"><%=rs.fields(6)%></td>
<%
else
%>
<td style="background-color:#76D1F7;color:#242544;"><%=rs.fields(6)%></td>
<%
end if
%>
</tr>
<%
rs.movenext
loop
rs.close
con.close
end if
%>
</table>
</div>
</div>
</body>
</html>
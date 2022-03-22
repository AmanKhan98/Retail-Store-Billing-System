<html>
<head>
<title>Retail Store Billing System
</title>
</head>
<body bgcolor="#172727" text="#000000">
<%
if session("uid")="" then
%>
<script>
alert("please login to continue")
window.open("index.asp","_self")
</script>
<%
end if
%>
<div style="height:750px;width:100%;text-align:right;">
<div style="height:550px;width:45%;position:absolute;text-align:left;left:10%;top:5%;background-color:#FFFFFF;padding:5%;font-size:30px;font-family:Calibri;">
Bill of Customer
<table border="1">
<tr style="background-color:#939999;">
<td>Bill No.</td>
<td>Bill Date</td>
<td>Customer Code</td>
<td>Total Amount</td>
<td>Discount</td>
<td>Net Amount</td>
</tr>

<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from bill where billno='"&session("bno")&"'"
rs.open sql,con
do until rs.eof
%>
<tr>
<td><%=rs.fields(0)%></td>
<td><%=rs.fields(1)%></td>
<td><%=rs.fields(2)%></td>
<td><%=rs.fields(4)%></td>
<td><%=rs.fields(5)%></td>
<td style="background-color:#939999;"><%=rs.fields(6)%></td>
</tr>
<%
rs.movenext
loop
rs.close
con.close
%>
</table>
Bill Details
<table border="1">
<tr style="background-color:#939999;">
<td>Bill No.</td>
<td>Product Code</td>
<td>Rate</td>
<td>Quantity</td>
<td>Amount</td>
</tr>

<%
set con=server.createobject("ADODB.Connection")
set rs=server.createobject("ADODB.Recordset")
con.open "rsbs"
sql="select * from billdetails where billno='"&session("bno")&"'"
rs.open sql,con
do until rs.eof
%>
<tr>
<td><%=rs.fields(0)%></td>
<td><%=rs.fields(1)%></td>
<td><%=rs.fields(2)%></td>
<td><%=rs.fields(3)%></td>
<td><%=rs.fields(4)%></td>
</tr>
<%
rs.movenext
loop
rs.close
con.close
%>
</table>
</div>
<input type="button" value="Home" style="background-color:#3B9360;color:#e7e3d4;" onclick="window.open('home.asp','_self')" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
<input type="button" value="Print Bill" style="background-color:#3B9360;color:#e7e3d4;" onclick="window.print()" onmouseover="this.style.backgroundColor='#4BB879'" 
onmouseout="this.style.backgroundColor='#3B9360'">
</div>
</body>
</html>

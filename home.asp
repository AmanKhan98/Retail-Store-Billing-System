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
window.open("index.asp","_self")
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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#325052;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#325052'">

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
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">

<input type="button" value="Logout" 
onclick="window.open('logout.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#172727;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#3A5D5F'" 
onmouseout="this.style.backgroundColor='#172727'">
</div>
<div style="float:left;height:500px;width:80%;background-color:#65CCB8;color:#172727;font-family:Calibri;">
<b style="font-size:30px;">Welcome <%=session("uid")%>!</b>
<br><br>
Choose the operation you want to perform.<br>

<a href="customer.asp"><div style="position:absolute;left:30%;top:60%;height:200px;width:200px;background-color:#65CCB8;outline:solid 2px #65CCB8;color:#172727;text-align:center;"
onmouseover="this.style.outlineColor='#3B945E'" onmouseout="this.style.outlineColor='#65CCB8'">
<img src="Images\customer.jpg" height=150 width=150><br>Create Customer
</div></a>

<a href="billing.asp"><div style="position:absolute;left:46%;top:60%;height:200px;width:200px;background-color:#65CCB8;outline:solid 2px #65CCB8;color:#172727;text-align:center;"
onmouseover="this.style.outlineColor='#3B945E'" onmouseout="this.style.outlineColor='#65CCB8'">
<img src="Images\bill.jpg" height=150 width=150><br>Billing
</div></a>

<a href="stock.asp"><div style="position:absolute;left:62%;top:60%;height:200px;width:200px;background-color:#65CCB8;outline:solid 2px #65CCB8;color:#172727;text-align:center;"
onmouseover="this.style.outlineColor='#3B945E'" onmouseout="this.style.outlineColor='#65CCB8'">
<img src="Images\stock.jpg" height=150 width=150><br>Stock Entry
</div></a>

<a href="password.asp"><div style="position:absolute;left:78%;top:60%;height:200px;width:200px;background-color:#65CCB8;outline:solid 2px #65CCB8;color:#172727;text-align:center;"
onmouseover="this.style.outlineColor='#3B945E'" onmouseout="this.style.outlineColor='#65CCB8'">
<img src="Images\password.jpg" height=150 width=150><br>Change Password
</div></a>

</div>
</div>
</body>
</html>

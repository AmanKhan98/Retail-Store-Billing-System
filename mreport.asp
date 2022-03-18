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
<div style="float:left;height:500px;width:80%;background-color:#2D9CCA;font-family:Calibri;">
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

</div>
</div>
</body>
</html>
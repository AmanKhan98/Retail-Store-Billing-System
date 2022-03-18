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
<div style="height:820px;width:100%;">
<div style="height:200px;width:100%;background-color:#242544">
<h1 style="position:absolute;left:23%;top:5%;font-family:Cambria Math;font-size:50px">RETAIL STORE BILLING SYSTEM</h1>
</div>
<div style="float:left;height:600px;width:20%;background-color:#29658A">

<input type="button" value="Home"
onclick="window.open('mhome.asp','_self')" 
style="height:40px;width:100%;font-size:18px;font-family:Calibri Light;text-align:left;background-color:#3E4074;color:F2F2F2;"
onmouseover="this.style.backgroundColor='#494B88'" 
onmouseout="this.style.backgroundColor='#3E4074'">

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
<div style="float:left;height:600px;width:80%;background-color:#2D9CCA;color:#242544;font-family:Calibri;">
<b style="font-size:30px;">Welcome <%=session("mid")%>!</b>
<br><br>
Choose the operation you want to perform.<br>

<a href="mproduct.asp"><div style="position:absolute;left:30%;top:55%;height:200px;width:200px;background-color:#2D9CCA;outline:solid 2px #2D9CCA;color:#242544;text-align:center;"
onmouseover="this.style.outlineColor='#29658A'" onmouseout="this.style.outlineColor='#2D9CCA'">
<img src="Images\product.jpg" height=150 width=150><br>Create Product
</div></a>

<a href="muser.asp"><div style="position:absolute;left:46%;top:55%;height:200px;width:200px;background-color:#2D9CCA;outline:solid 2px #2D9CCA;color:#242544;text-align:center;"
onmouseover="this.style.outlineColor='#29658A'" onmouseout="this.style.outlineColor='#2D9CCA'">
<img src="Images\muser.jpg" height=150 width=150><br>Create User
</div></a>

<a href="mreport.asp"><div style="position:absolute;left:62%;top:55%;height:200px;width:200px;background-color:#2D9CCA;outline:solid 2px #2D9CCA;color:#242544;text-align:center;"
onmouseover="this.style.outlineColor='#29658A'" onmouseout="this.style.outlineColor='#2D9CCA'">
<img src="Images\mreport.jpg" height=150 width=150><br>Report
</div></a>

<a href="mpassword.asp"><div style="position:absolute;left:78%;top:55%;height:200px;width:200px;background-color:#2D9CCA;outline:solid 2px #2D9CCA;color:#242544;text-align:center;"
onmouseover="this.style.outlineColor='#29658A'" onmouseout="this.style.outlineColor='#2D9CCA'">
<img src="Images\mpassword.jpg" height=150 width=150><br>Modify Manager Account
</div></a>

<a href="moduser.asp"><div style="position:absolute;left:46%;top:90%;height:200px;width:200px;background-color:#2D9CCA;outline:solid 2px #2D9CCA;color:#242544;text-align:center;"
onmouseover="this.style.outlineColor='#29658A'" onmouseout="this.style.outlineColor='#2D9CCA'">
<img src="Images\moduser.jpg" height=150 width=150><br>Modify User Account
</div></a>

<a href="deluser.asp"><div style="position:absolute;left:62%;top:90%;height:200px;width:200px;background-color:#2D9CCA;outline:solid 2px #2D9CCA;color:#242544;text-align:center;"
onmouseover="this.style.outlineColor='#29658A'" onmouseout="this.style.outlineColor='#2D9CCA'">
<img src="Images\deluser.jpg" height=150 width=150><br>Delete User Account
</div></a>

</div>
</div>
</body>
</html>
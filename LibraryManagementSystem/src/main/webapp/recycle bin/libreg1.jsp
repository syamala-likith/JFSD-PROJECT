<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>


</style>
</head>
<body>

<!-- %@ include file="navbar.jsp" %-->

<br>

<h3 align=center><u>Librarian Registration</u></h3>

<br>


<form method="post" action="insertlib">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<input type="text" name="name" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<input type="radio" name="gender" value="MALE" required/>Male
<input type="radio" name="gender" value="FEMALE" required/>Female
<input type="radio" name="gender" value="OTHERS" required/>Others
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td>
<input type="date" name="dob" required="required"/>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><input type="email" name="email" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="pwd" required/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><input type="text" name="contact" pattern="[789][0-9]{9}"  placeholder="Must be 10 digits" required/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form>


</body>
</html>
<%@ page contentType="text/html; charset=EUC-KR"%> 
<html> 
 
<head> 
 
<title>Register Form</title> 
 
<link href="style.css" rel="stylesheet" type="text/css"/> 
<script language="javascript" src="script.js"></script> 
</head> 
 
<body> 
 
<form method="post" action="regProc.jsp" name="regForm">  
<table border="1"> 
 
 <tr> 
 
<td colspan="2" align="center">ȸ�� ���� ���� �Է�</td>  
 </tr> 
 
 <tr> 
 
<td align="right">���̵� : </td> 
 
<td><input type="text" name="id"/>&nbsp; 
<input type="button" value="�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)"/></td>  
 </tr>
 <tr> 
<td align="right">�н����� : </td> 
 
<td><input type="password" name="pass"/></td>  
 </tr> 
 
 <tr> 
 
<td align="right">�н����� Ȯ��: </td> 
 
<td><input type="password" name="repass"/></td>  
 </tr> 
 
 <tr> 
 
<td align="right">�̸� : </td> 
 
<td><input type="text" name="name"/></td> 
 
 </tr> 
 
 <tr> 
 
<td align="right">��ȭ��ȣ : </td> 
 
<td> 
 
<select name="phone1"> 
 
<option value="02">02</option> 
 
<option value="010">010</option> 
 
</select> - 
 
<input type="text" name="phone2" size="5"/> - 
 
<input type="text" name="phone3" size="5"/> 
 
</td> 
 
 </tr> 
 
 <tr> 
 
<td align="right">�̸��� : </td> 
 
<td><input type="text" name="email"/></td> 
 
 </tr> 
  <tr> 
 
<td align="right">������ȣ : </td> 
 
<td><input type="text" name="zipcode"/> 
 
<input type="button" value="ã��" onClick="zipCheck()"/></td>  
 </tr> 
 
 <tr> 
 
<td align="right">�ּ�1 : </td> 
 
<td><input type="text" name="address1" size="50"/></td>  
 </tr> 
 
 <tr> 
 
<td align="right">�ּ�2 : </td> 
 
<td><input type="text" name="address2" size="30"/></td>  
 </tr> 
 
 <tr> 
 
<td colspan="2" align="center">
 <input type="button" value="ȸ������" onClick="inputCheck()"/>&nbsp;&nbsp;<input type="reset" value="�ٽ��Է�"/> 
 
</td> 
 
 </tr> 
 
</table> 
 
</form>
 </body> 
 
</html>
 
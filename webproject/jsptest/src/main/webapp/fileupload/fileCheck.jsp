<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
String name = request.getParameter("name");
String subject = request.getParameter("subject");
String filename1 = request.getParameter("filename1");
String filename2 = request.getParameter("filename2");
String origfilename1 = request.getParameter("origfilename1");
String origfilename2 = request.getParameter("origfilename2");
%>
<html>
<head>
<title>���� ���ε� Ȯ�� �� �ٿ�ε�</title>
</head>
<body>
	�ø� ��� :
	<%=name%><br> ���� :
	<%=subject%><br> ���ϸ�1 :
	<a href="/myWeb/upload/<%=filename1%>"> <%=origfilename1%></a>
	<br> ���ϸ�2 :
	<a href="/myWeb/upload/<%=filename2%>"> <%=origfilename2%></a>
	<p>
</body>
</html>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="./css/min.css" rel="stylesheet" />
</style>
<% 
	Date date = new Date();
	 String displayDate = date.toString();
%>
</head>
<body>
	<h1>안녕하세요. 자바서버페이지 오신것을 환영합니다.</h1>
	<% for(int i=0;i<10;i++){ %>
	<h2><%= displayDate + i%> </h2>
	<% } %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 자바코드구현 멤버변수,멤버함수선언 -->
<%! 
	public String declation = "멤버변수선언문입니다.";
	public String getDeclation(){
	return declation;
	}
%>

<!-- 자바코드구현 서비스지역변수선언 -->
<%
	String scriptlet = "스크립틀릿은 서비스함수에 구현한것입니다.";
	out.println("내장객체를 이용한 출력"+ this.declation);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>선언문출력하기 <%= this.getDeclation() %></h2>
</body>
</html>
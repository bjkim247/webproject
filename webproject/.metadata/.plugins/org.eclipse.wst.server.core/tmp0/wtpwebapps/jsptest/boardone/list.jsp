<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="boardone.BoardDAO"%><%@ page import="boardone.BoardVO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ include file="view/color.jsp"%>
<%!// ���� <1>
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
<%
//<���� 2>
int count = 0;
int number = 0;
List<BoardVO> articleList = null;
BoardDAO dbPro = BoardDAO.getInstance();
count = dbPro.getArticleCount();//��ü �ۼ�
if (count > 0) {
	articleList = dbPro.getArticles();//����<3>
}
number = count;//����<4>
%>
<html>
<head>
<title>�Խ���</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
	<center>
		<b>�۸��(��ü ��:<%=count%>)
		</b>
		<table width="700">
			<tr>
				<td align="right" bgcolor="<%=value_c%>"><a
					href="writeForm.jsp">�۾���</a></td>
		</table>
		<%
		if (count == 0) {
		%>
		<table width="700" border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center">�Խ��ǿ� ����� ���� �����ϴ�.</td>
		</table>
		<%
		} else {
		%>
		<table border="1" width="700" cellpadding="0" cellspacing="0"
			align="center">

			<tr height="30" bgcolor="<%=value_c%>">
				<td align="center" width="50">�� ȣ</td>
				<td align="center" width="250">�� ��</td>
				<td align="center" width="100">�ۼ���</td>
				<td align="center" width="150">�ۼ���</td>
				<td align="center" width="50">�� ȸ</td>
				<td align="center" width="100">IP</td>
			</tr>
			<%
			for (int i = 0; i < articleList.size(); i++) {
				BoardVO article = (BoardVO) articleList.get(i);
			%>
			<tr height="30">
				<td align="center" width="50"><%=number--%></td>
				<td width="250">
					<!-- ���� <5> --> <a
					href="content.jsp?num=<%=article.getNum()%>&pageNum=1"> <!-- ����<6> -->
						<%=article.getSubject()%></a> <%
 if (article.getReadcount() >= 20) {
 %> <img src="images/hot.gif" border="0" height="16">
					<%
					}
					%>
				</td>
				<td align="center" width="100"><a
					href="mailto:<%=article.getEmail()%>"> <%=article.getWriter()%></a></td>

				<td align="center" width="150"><%=sdf.format(article.getRegdate())%></td>
				<td align="center" width="50"><%=article.getReadcount()%></td>
				<td align="center" width="100"><%=article.getIp()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		<!-- ���� <7> -->
	</center>
</body>
</html>
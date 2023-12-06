<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="view/color.jsp"%>
<html>
<head>
<title>My Board</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<%
int num = 0, ref = 1, step = 0, depth = 0;
try {
    if (request.getParameter("num") != null) {
        num = Integer.parseInt(request.getParameter("num"));
        ref = Integer.parseInt(request.getParameter("ref"));
        step = Integer.parseInt(request.getParameter("step"));
        depth = Integer.parseInt(request.getParameter("depth"));
    }
%>
<body>
    <div class="container">
        <h1 class="text-center mt-3 mb-5">글쓰기</h1>
        <form method="post" name="writeForm" action="writeProc.jsp" onsubmit="return writeSave()">
            <input type="hidden" name="num" value="<%=num%>">
            <input type="hidden" name="ref" value="<%=ref%>">
            <input type="hidden" name="step" value="<%=step%>">
            <input type="hidden" name="depth" value="<%=depth%>">
            <div class="mb-3 row">
                <label for="writer" class="col-sm-2 col-form-label">이름</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="writer" name="writer" maxlength="12">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="email" class="col-sm-2 col-form-label">이메일</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="email" name="email" maxlength="30">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="subject" class="col-sm-2 col-form-label">제목</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="subject" name="subject" maxlength="50">
                </div>
            </div>
            <div class="mb-3 row">
                <label for="content" class="col-sm-2 col-form-label">내용</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="content" name="content" rows="5"></textarea>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="pass" class="col-sm-2 col-form-label">비밀번호</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="pass" name="pass" maxlength="10">
                </div>
            </div>
            <div class="mb-3 row">
                <div class="col-sm-10 offset-sm-2">
                    <input type="submit" class="btn btn-primary" value="글쓰기">
                    <input type="reset" class="btn btn-secondary" value="다시작성">
                    <input type="button" class="btn btn-secondary" value="목록" onClick="window.location='list.jsp'">
                </div>
            </div>
        </form>
    </div>
    <%
    } catch (Exception e) {
    }
    %>
</body>
</html>

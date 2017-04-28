<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<%
	String kakao = request.getParameter("kakaoid");
%>
<form method="post" action="Y_Join_OK.jsp" nama="name">
닉네임 : <input type="text" name="nickname" id="nick" />
<input type="hidden" name="kakaoid" value="<%=kakao %>"/>
<input type="submit" value="제출" />
</form>

</body>
</html>
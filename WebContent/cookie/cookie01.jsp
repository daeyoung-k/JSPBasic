<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// Date 클래스를 이용해서 xxxx년xx월xx일
	// 쿠키 이름은 show쿠키
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY년MM월DD일");
	String date = sdf.format(new Date() );
	
	Cookie cookie = new Cookie("show",date);
	cookie.setMaxAge(100);
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="cookie02.jsp">쿠키확인</a>

</body>
</html>
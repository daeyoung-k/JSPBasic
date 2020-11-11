<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로 이동 -->	
	<a href="../../request/req_video.jsp">video(상대경로)</a><br>
	<a href="/JSPBasic/request/req_video.jsp">video(절대경로)</a><br>
	<hr/>
	<!-- img태그를 사용해서 java.png참조 -->
	<img alt="사진" src="../../request/img/java.jpg" width="150px">
	<img alt="사진" src="/JSPBasic/request/img/오라클.jpg" width="150px"><br>
	<hr/>
	<!-- a태그를 이용해서 TestServlet으로 상대경로, 절대경로 -->
	<a href="../../banana">테스트(상대경로)</a><br>
	<a href="/JSPBasic/banana">테스트(절대경로)</a><br>
	
	<% out.println("출력~"); %>
</body>
</html>
<%@ page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언자와 스크립트릿의 차이
	//선언자 - 멤버변수(누적), 메서드를 선언할 때 사용
	public int total = 0;
	public int randomNum() {
		Random ran = new Random();
		int num = ran.nextInt(10); //0~9;
		return num;
	}
%>
<%
	//스크릿트립 - JSP페이지 실행마다 한번씩 실행되는 코드.
	int each = 0;
	total++; //1증가
	each++; //1증가
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	선언자값: <%= total %><br>
	스크립트릿: <%= each %><br>
	랜덤메서드:<%= randomNum() %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("korean"));
	int eng = Integer.parseInt(request.getParameter("english"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	int sum = kor + eng + math;
	double age = sum/3.0;
	
	String result = String.format("%.2f", age);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>의 평균은  <%=result %>입니다.<br/>
	<%if(age > 80){%>
		고득점 입니다.
	<%}else if(age >60){%>
		중간점수 입니다.
	<%}else{%>
		저득점 입니다.
	<%}%>
</body>
</html>
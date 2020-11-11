<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 사용하기
	// 쿠키는 서버에 요청이 들어올때 자동으로 전송
	
	Cookie[] cookies = request.getCookies();
	
	// 시간이 말료되거나 하여 사라지는 쿠키도 있음.
	
	if(cookies != null){  // 쿠키가 없는 경우를 대비하기 위해
		for(int i = 0; i< cookies.length; i++){
			out.println(cookies[i].getName());
			out.println(cookies[i].getValue());
			
		}
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
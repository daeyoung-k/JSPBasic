<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//show쿠키가 있다면 가지고 있는 날짜를 화면에 출력 만약에 쿠키가 없으면 쿠키가 없네용 출력
	
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("show")){
				out.println(cookies[i].getValue()+"<br/>");
			}else{
				out.println("쿠키가 없네용~~<br/>");	
			}			
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
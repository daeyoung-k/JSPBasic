<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!String reid=""; %>
<%
	//id_check쿠키를 확인하고, 아이디 태그 value 옵션에 값을 넣으면됩니다.
	
	
	Cookie[] cookies = request.getCookies();

	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals("id_check")){
				reid = cookies[i].getValue();
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
	<h2>쿠키연습</h2>
	<form action="cookie_login_ok.jsp" method="post">
		아이디 : <input type="text" name="id" value="<%=reid %>" required/><br/>
		비밀번호 : <input type="password" name="pw" required="required"/><br/>
		<input type="submit" value="로그인"/>
		<input type="checkbox" name="idCheck" value="y">아이디 기억하기	
	</form>

</body>
</html>
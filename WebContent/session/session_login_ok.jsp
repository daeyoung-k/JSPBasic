<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 1. 아이디, 비밀번호, nick을 받습니다
	// 2. 아이디, 비밀번호가 동일하면 아이디정도,이름정보를 저장하는 세션을 생성
	// 		session_welcome페이지로 이동해서 id(이름)님 환영합니다
	// 3. 틀린경우 로그인 페이지로
	
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)){ //로그인 성공
		session.setAttribute("id", id);
		session.setAttribute("nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
	}else{
		/* response.sendRedirect("session_login.jsp"); // 다시 로그인 화면 */
%>	
	<script>
		alert("아이디 비밀번호를 확인");
		location.href = "session_login.jsp"; //redirect와 같은기능
	</script>
<%			
	}


%>
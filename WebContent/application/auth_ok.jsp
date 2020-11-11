<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	올바른 인증값을 적은 경우는 reverse.jsp로 이동
	올바른 인증값을 적은 경우는 authYN이름으로 인증성공세션을 생성.
	올바르지 않은경우는 다시 인증페이지로 이동.	
	*/
	request.setCharacterEncoding("UTF-8");

	String au = (String)session.getAttribute("auth");
	String code = request.getParameter("code");
	if(au.equals(code)){
		//인증성공세션
		session.setAttribute("authYN", "y");
		
		response.sendRedirect("reverse.jsp");
	}else{
		response.sendRedirect("auth.jsp");
	}
%>
    
<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("login") == null){
		response.sendRedirect("login01.jsp");
	}



	User user = (User)session.getAttribute("login");

	UserRepository.delUser(user.getId()); //삭제.
	
	session.invalidate();
	
	response.sendRedirect("login01.jsp"); //로그인페이지로 이동
%>
    
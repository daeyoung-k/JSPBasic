<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인증 정보 삭제
	session.invalidate();
	response.sendRedirect("session_login.jsp"); //로그인 페이지


%>
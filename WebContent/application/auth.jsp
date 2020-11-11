<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // 랜덤하게 값을 뽑아 만들어주는 객체 : uuid
   UUID uuid =   UUID.randomUUID();
   
   /* uuid 출력 예시 
   4be69d10-a398-44a6-8a76-6a76a723b373
   331c2094-2356-42a1-8c8f-50cee94ffa6a */
   
   // 문자열 자르기
   String[] arr = uuid.toString().split("-");
   
   // 인증값을 세션에 저장
   session.setAttribute("auth", arr[1]);
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <h2>인증페이지</h2>
      <form action="auth_ok.jsp" method="post">
         인증문자 : <b><i><del><%=arr[1] %></del></i></b><br/>
         
         인증문자를 입력하세요 : <input type="text" name="code"><br/>
         <input type="submit" value="확인">
         
      </form>
      
      
      
      
</body>
</html>
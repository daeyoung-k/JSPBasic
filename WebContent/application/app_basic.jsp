<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // application은 session과 사용방법이 거의 동일하며,
   // 생명주기가 톰캣을 stop할때까지 1개 유지가 됩니다.
   
   int total = 0;
   
   // 애플리케이션에서 정보를 가져옴
   if(application.getAttribute("total") != null){
      total += (int)application.getAttribute("total");   // 객체반환되어 int형으로 형변환.
   }
   // 새로고침할때마다 값이 누적됨.
   // 애플리케이션에 저장되어 있던 total이 불러오기 때문에
   // 톰캣을 중지할때까지 값이 유지됨. 톰캣을 껏다가 키면 초기화됨.
   // 브라우저를 다시 켜도 사용 가능

   total++;
   
   // 애플리케이션 저장
   application.setAttribute("total", total);
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   값 : <%=total %>
</body>
</html>
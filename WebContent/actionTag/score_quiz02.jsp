<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60이상이면 score_quiz03 으로 이동해서 평균과 이름을 출력
	평균이 60이하이면 score_quiz04 으로 이동해서 "~님은 불합격 입니다"
	
	조건:세션을 사용하지 않습니다.
	*/
	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");	
	
	double sum = Double.valueOf(kor) + Double.valueOf(eng) + Double.valueOf(math);
	double result = sum / 3.0 ;
	String results = String.format("%.2f",result);
	
%>
	<%if(result > 60){%>
		<jsp:forward page="score_quiz03.jsp">
			<jsp:param value="<%=results %>" name="ave"/>			
		</jsp:forward>
	<%}else{%>
		<jsp:forward page="score_quiz04.jsp">	
			<jsp:param value="<%=results %>" name="ave"/>		
		</jsp:forward>   
    <%}%>
    
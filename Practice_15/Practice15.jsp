<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
	int year = 1919;
	int month = 3; // 주의 ! Calendar.MARCH==2

	out.println("<h1>" + year + "년 " + month + "월 </h1><br>");
	out.println("<hr>");
	
	cal.set(year,month-1,1);
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH)+1;
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);

	for(int i=1; i<=startDay-1; i++) {
		out.println("&nbsp; &nbsp;&nbsp;");
	}
	
	for(int i=start; i<=end; i++) {
		out.println("&nbsp;&nbsp;" + i);
		if((i+startDay)%7 == 1)
			out.println("<br>");
	}
%>
</body>
</html>
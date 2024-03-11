<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice14</title>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH);
	int date = cal.get(Calendar.DATE);
	int day = cal.get(Calendar.DAY_OF_WEEK);

	out.println("오늘은 " + year + "년 " + month + "월 " + date + "일 ");
	switch(day) {
	case 1:
		out.println("일요일입니다.");
		break;
	case 2:
		out.println("월요일입니다.");
		break;
	case 3:
		out.println("화요일입니다.");
		break;
	case 4:
		out.println("수요일입니다.");
		break;
	case 5:
		out.println("목요일입니다.");
		break;
	case 6:
		out.println("금요일입니다.");
		break;
	case 7:
		out.println("토요일입니다.");
		break;
	}
	out.println("<br>");

	
	cal.set(2023,Calendar.OCTOBER,1);
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay=cal.get(Calendar.DAY_OF_WEEK);
	out.println("<br>");
	out.println("이번달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br>");
	out.println("<br>");
	
	cal.set(2001,Calendar.APRIL,21);
	year = cal.get(Calendar.YEAR);
	month = cal.get(Calendar.MONTH)+1;
	date = cal.get(Calendar.DATE);
	day = cal.get(Calendar.DAY_OF_WEEK);
	
	out.println("내 생일 " + year + "년 " + month + "월 " + date + "일은 ");
	switch(day) {
	case 1:
		out.println("일요일입니다.");
		break;
	case 2:
		out.println("월요일입니다.");
		break;
	case 3:
		out.println("화요일입니다.");
		break;
	case 4:
		out.println("수요일입니다.");
		break;
	case 5:
		out.println("목요일입니다.");
		break;
	case 6:
		out.println("금요일입니다.");
		break;
	case 7:
		out.println("토요일입니다.");
		break;
	}
	out.println("<br>");
%>
</body>
</html>
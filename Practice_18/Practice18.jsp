<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice18</title>
<style>
	table {
		border-collapse: collapse;
		width: 800px;
		height: 350px;
		margin: 0 auto;
	}
	
	tr, td {
		border: 1px solid black;
		text-align: center;
	}
	
	.text {
		position: relative;
		left: 1100px;
    }
</style>
</head>
<body>
	<%!
		public String parseDay(int cnt, String day){
			if(cnt % 7 == 0 || cnt == 0)
				return "<font color=\"red\">" + day + "</font>";
			else if((cnt - 6) % 7 == 0 || cnt == 6)
				return "<font color=\"blue\">" + day + "</font>";
			else
				return day;
		}
	%>
	
	<%		
		Calendar today = Calendar.getInstance(); 
 		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH);
		int date = today.get(Calendar.DATE);
		int day = today.get(Calendar.DAY_OF_WEEK);
		
		Calendar cal = Calendar.getInstance(); 
		cal.set(year, month - 1, date);
		
		int cnt = 0; 
		String week[] = {"일", "월", "화", "수", "목", "금", "토"};
		
		out.println("<b class=\"text\">" + year + "-" + (month + 1) + "-" + date + "</b><br>");
		
		int start = cal.getMinimum(Calendar.DATE);
		int startDay = cal.get(Calendar.DAY_OF_WEEK) - 1;
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		out.println("<table>");
		out.println("<tr>"); 
		for(int i = 0; i < 7; i++)
		{
			out.println("<td><b>" + parseDay(cnt, week[i]) + "</b></td>");
			cnt++;
		}
		out.println("</tr>");
		
		out.println("<tr>");
		for(int i = 0; i < 7; i++){ 
			if (i < startDay - 1)
				out.println("<td>&nbsp</td>");
			else{
				out.println("<td>" + parseDay(cnt, Integer.toString(start)) + "</td>");
				start++;
			}
			cnt++;
		}
		out.println("</tr>");
		
		for(int i = 0; i < 4; i++){ 
			out.println("<tr>");
			for(int j = 0; j < 7; j++){
				if(start > end){
					out.println("<td>&nbsp</td>");
				}
				else{
					out.println("<td>" + parseDay(cnt, Integer.toString(start)) + "</td>");
					start++;	
				}
				cnt++;
			}
			out.println("</tr>");
		}
		
		out.println("</tr>");
		out.println("</table>");
	%>
</html>
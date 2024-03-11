<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
	
	    int year, month;
		String yearParam = request.getParameter("YEAR");
		String monthParam = request.getParameter("MONTH");
		
		
		
		if(yearParam == "" || monthParam == ""){
			year = cal.get(Calendar.YEAR);
			month = cal.get(Calendar.MONTH); 
			
		}
		else{
			year = Integer.parseInt(request.getParameter("YEAR")); 
			month = Integer.parseInt(request.getParameter("MONTH")) - 1;
			}
		
		cal.set(year, month, 1);
		out.println("<h1>" + year + "년 " + (month + 1) + "월</h1><hr>");

        int count = 0;
		int day = cal.get(Calendar.DAY_OF_WEEK); 
		int start = cal.getMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		
		for(int i = 0; i < 7; i++){
			if (i < day - 1)
				out.println("&nbsp&nbsp&nbsp");
			else {
				out.println(start);
				start++;
			}
		}
		
		for(int i = start; i <= end; i++){
			if(count % 7 == 0)
				out.println("<br>");
			out.println(i + "&nbsp");
			count++;
		}		
	%>
</body>
</html>
<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<style>
table {
	border-collapse : collapse;
	width : 500px;
	height : 200px;
	margin : 0 auto;
}
td,th {
	border : 1px solid black;
}
.sun {
	color : red;
}
.sat {
	color : blue;
}
</style>
</head>
<body>
<%
	String[] day= {"일", "월", "화", "수", "목", "금", "토"};

	out.println("<table>");
	for(int i = 0; i < 5; i++) 
	{
		out.println("<tr>");
		for(int j = 0; j < 7; j ++)
		{
			if( i == 0 )
			{
				if(j == 0)
					out.println("<th class = 'sun'>" + day[j] + "</th>");
				else if(j == 6)
					out.println("<th class = 'sat'>" + day[j] + "</th>");
				else
					out.println("<th>" + day[j] + "</th>");
			}
			else
				out.println("<td>&nbsp;</td>");
		}
		out.println("</tr");
	}
	out.println("</table>");
	
%>
</body>
</html>
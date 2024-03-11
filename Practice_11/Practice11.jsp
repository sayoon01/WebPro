<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice11</title>
<style>
* {
	text-align : center;
}
table {
	width : 500px;
	height : 500px;
	margin : 0 auto;
	border : 1px solid black;
}

tr,td {
	border : 1px solid black;
	text-align : center;
}
</style>
</head>
<body>
<%
	out.println("<h1>구구단 출력</h1>");
	out.println("<hr>");
	
	out.println("<table>");
	for(int i = 0; i < 2; i++) 
	{
		out.println("<tr>");
		for(int j = 0; j < 4; j++)
		{
			int num = 4*i + j + 2;
			out.println("<td>");
			for(int k = 1; k <= 9; k++)
			{
				out.println(num + " * " + k + " = " + (num*k) + "<br>");	
			}
			out.println("</td>");
		}
		out.println("</tr>");
	}
	out.println("</table>");
%>
</body>
</html>
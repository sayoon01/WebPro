<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include</title>
<style>
.include {
			margin: 0 auto;
}
</style>
<body>	
	<h2>include 지시어 연습</h2><hr>
	<br><br><p>
	<table class="include">
		<tr>
			<td>
				<%@ include file="Calendar.jsp" %> </td>
			<td>
				<%@ include file="News.jsp" %>
			</td>
		</tr>
	</table>
</body>
</html>


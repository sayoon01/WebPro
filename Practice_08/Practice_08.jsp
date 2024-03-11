<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_08</title>
</head>
<body>
<%
	out.println("Hello, ");
	out.println("world!!<br>");
	out.println("Hello, <br> World!!<br>");
	out.print("\"Hello, World!!\"");
%>
<%-- 웹브라우저로 보면 몇줄로 보이는가? 이유는
     1줄로 보인다. 왜냐하면 println은 html소스에서 출력되는 내용을 다음 줄로 이동시키는 거다
      즉 브라우저 결과에는 반영이 안된다.
       웹브라우저에 반영시키려면 <br>를 써줘야 두줄로 출력된다 --%>
<%-- HTML문서로 보면 몇줄로 보이는가? 이유는?
     <br>을 사용해야 두줄로 보인다. println은 html소스에서 출력되는 내용 다음줄로 이동시키기 때문 --%>
</body>
</html>
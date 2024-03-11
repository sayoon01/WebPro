<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<style>
	table{
	    margin: 0 auto;
	    text-align: center;
	}
	
	.orange{
	    background-color: #ffdab9;
	    padding: 5px 0px;
	}
	
	.ivory{
	    background-color: #ffefd5;
	    width: 700px;
	    height: 300px;
	}
	
	.flower{
	    padding: 10px;
	}
	
	h1{
	    text-align: center;
	}
	
	img{
	    margin: 0 auto;
	    display: block;
	}
</style>
</head>
<body>
	<img src="image/eclass_title.jpg">
    <table>
        <tr>
            <td class="orange"><b>오류가 발생했습니다.</b></td>   
        </tr>
        <tr>
            <td class="ivory">
                <img src="image/flower.gif" class="flower">
                <b>오류 발생 시간: 
                <%= new java.util.Date() %> </b>
                <br><p>
                <b>최대한 빨리 조치하겠습니다.</b>
            </td>
        </tr>
    </table>
</body>
</html>
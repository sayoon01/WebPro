<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.pr32.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>

<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록(전체보기)</title>
<style>
	.addr_list {
	    border: 1px solid black;
	    margin-top: 20px;
	}
	
	.addr_list td {
	    padding: 5px;
	    border: 1px solid black;
	}
</style>
</head>
<body>
    <div align="center">
        <h2>주소록(전체보기)</h2><hr>
        <a href="addr_form.jsp">주소 추가</a> <a href="addr_list_group.jsp">그룹별 목록 보기</a>
        
        <table class="addr_list">
            <tr>
                <td>이름</td>
                <td>전화번호</td>
                <td>이메일</td>
                <td>성별</td>
                <td>그룹</td>
            </tr>

        <%
    		String sindexParam = request.getParameter("sindex");
        	int rpp = 3; 
            int currentPage = 1; 
            int allPage = 0; 
            
            if(sindexParam == null)
            	currentPage = 1; 
            else
            	currentPage = Integer.parseInt(sindexParam);
            
            List<AddrBean> addrList = am.getAddrList();
            
            int startIndex = (currentPage - 1) * rpp; 
            int lastIndex = (currentPage * rpp) - 1; 

            
			lastIndex = Math.min(lastIndex, addrList.size() - 1);
	            
            /*for(int i = startIndex; i <= lastIndex; i++){
                AddrBean addr = addrList.get(i);
                out.println("<tr>");
                out.println("<td>" + addr.getUserName() + "</td>");
                out.println("<td>" + addr.getTel() + "</td>");
                out.println("<td>" + addr.getEmail() + "</td>");
                out.println("<td>" + addr.getGender() + "</td>");
                out.println("<td>" + addr.getGroup() + "</td>");
                out.println("</tr>");
            }*/
		%>
        <c:forEach var="index" begin="${startIndex}" end="${lastIndex}">
            <c:set var="addr" value="${addrList[index]}" />
            <tr>
                    <td>${addr.userName}</td>
                    <td>${addr.tel}</td>
                    <td>${addr.email}</td>
                    <td>${addr.gender}</td>
                    <td>${addr.group}</td>
            </tr>
        </c:forEach>

		</table>
                
		<%
			allPage = addrList.size() / rpp;
        	if(addrList.size() % rpp != 0)
        		allPage += 1;

            /*for(int i = 1; i <= allPage; i++){
            	if(i == currentPage)
            		out.println("|" + i + "|");
            	else
            		out.println("<a href=\"addr_list.jsp?sindex=" + i + "\">|" + i + "|</a>");
            }*/
        %>
        
        <c:forEach var="i" begin="1" end="${allPage}">
            <c:choose>
                <c:when test="${i == currentPage}">
                        |${i}|
                </c:when>
                <c:otherwise>
                    <a href="addr_list.jsp?sindex=${i}">|${i}|</a>
                </c:otherwise>
                </c:choose>
                </c:forEach>

        </div>
</body>
</html>
<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
header img {
    margin: 0 auto;
    display: block;
}
h1 {
	text-align: center;	
}

.main {
	margin: 0 auto;
	border-top: 2px solid #B6B6B6;
	margin-top: 20px;
}

table {
    margin: 0 auto;
    padding: 0px 0px;
}

.yellow {
    background-color: #ffff99;
}

</style>
</head>
<body>    
        <header>
            <img src="image/eclass_title.jpg">
    </header>
            
    <section>
		<h1>로그인</h1>
		<div class="main">
			<form name="frm1" method="post" action="result.jsp">
				<table>
					<tr>
						<th rowspan="5"><img src="image/eclass_logo.png" ></th>
						<th colspan="2">회원님의 아이디와 비밀번호를 정확히 입력하세요.</th>
					</tr>
					<tr>
						<td></td>
						<td>
							<select name="type">
								<option value="학부생" selected>학부생</option>
								<option value="대학생">대학생</option>
								<option value="대학원생">대학원생</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" name="strID" maxlength="15" size="15" class="yellow">
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="password" name="strPWD" maxlength="15" size="15" class="yellow">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="로그인" >
							<input type="button" value="가입하기" onclick="document.location='member2.html'">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</section>
 </body>
</html>
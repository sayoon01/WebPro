<%--컴퓨터학과 20200990 윤상아 /  Edge에 최적화--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member3</title>
<style>
table { 
    margin: 0 auto;
    border-collapse:collapse;      
}
table, tr, td{
    border: solid 1px black;
    padding: 3px;
}
       
th {
        background-color:#ececec;
        text-align:center;
        font-weight:bold;
 }
 textarea {
        overflow-y:scroll; 
}
input.imageAlign {
           vertical-align:middle; 
}
.eclass {
    margin: 0 auto;
    display: block;
}
img {
    margin: 0 auto;   
}
</style>
</head>
<body>
       <img src="image/eclass_title.jpg" class="eclass">
        <div>
        <form name="frm3" method="post" action="Practice17.jsp">
        <table border="1">
              <thead>
               <tr>
                    <th colspan="2">
                       회원가입
                    </th>
                </tr>
                </thead>
                <tr>                  
                    <th>아이디</th>
                    <td>
                       <input type="text" size="15" name="id">
                        <input type="image" src="image/check.gif" class="imageAlign">
                    </td>
                </tr>
                <tr>
                    <th>패스워드</th>
                    <td>
                        <input type="password" size="15" name="pwd"> 
                    </td>
                </tr>
                <tr>
                    <th>성별</th>
                    <td> 
                        <input type="radio" name="gen" value="0">남
                        <input type="radio" name="gen" value="1" checked>여
                    </td>
                </tr>
                  <tr>
                    <th>국적</th>
                    <td>
                        <input type="text" value="대한민국" size="20" readonly> 
                        <input type="button" value="국적변경" disabled>
                    </td>
                </tr>
                <tr>
                    <th>휴대폰</th>
                    <td>
                        <select name="phone1">
                            <option value="0" selected>010</option>
                            <option value="1">011</option>
                            <option value="2">017</option>
                            <option value="3">070</option>
                            <option value="4">080</option>
                         </select> 
                        - <input type="text" maxlength="4" size="4" name="phone2"> 
                        - <input type="text" maxlength="4" size="4" name="phone3"> 
                    </td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="email" size="30" name="email"></td> 
                </tr>
                <tr>
                    <th>생일</th>
                    <td><input type="date" name="birth"> </td>
                </tr>
                <tr>
                    <th>관심분야</th>
                    <td>
                        <input type="checkbox" name="hobby" value="0"> 뉴스
                        <input type="checkbox" name="hobby" value="1" checked>맛집
                        <input type="checkbox" name="hobby" value="2">책
                        <input type="checkbox" name="hobby" value="3">영화
                        <input type="checkbox" name="hobby" value="4">여행
                    </td>
                </tr>
                <tr>
                    <th>가입인사</th>
                    <td>
                        <textarea rows="5" cols="60" name="memo">회원들에게 간단한 가입인사를 남겨주세요. </textarea>
                    </td>
                </tr>
                <tr>
                    <th>증명사진</th>
                    <td>
                        <input type="file" accept=".jpg, .gif, .jepg">
                    </td>
                </tr>
                <tr>
                    <th colspan="2">
                        <input type="submit" value="가입하기" onclick="document.location='member4.html'">
                        <input type="reset" value="다시작성">
                    </th>
                </tr>
            </table>
            </form>            
        </div>  
    </body>
</html>
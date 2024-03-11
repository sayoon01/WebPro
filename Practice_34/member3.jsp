<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member3</title>
</head>
<style>
	h1{
	    text-align: center;
	}
	
	img{
	    margin: 0 auto;
	    display: block;
	}
	
	table, tr, td{
	    border: solid 1px black;
	    border-collapse: collapse;
	    padding: 4px;
	}
	
	table, form{
	    width: 500px;
	    margin: 0 auto;
	}
	
	.gray{
	    background-color: #ececec;
	    font-weight: bold;
	    text-align: center;
	    width: 100px;
	}
</style>
<body>
	<img src="image/eclass_title.jpg" class="eclass_title">
    <form name="frm3" method="post" action="Practice_34.jsp">
        <table>
            <tr>
                <td colspan="2" class="gray">회원 가입</td>
            </tr>
            <tr>
                <td class="gray">아이디</td>
                <td>
                    <input type=text size="15" name="id">
                    <input type=image src="image/check.gif" style="vertical-align:middle">
                </td>
            </tr>
            <tr>
                <td class="gray">패스워드</td>
                <td><input type=password size="15" name="pw"></td>
            </tr>
            <tr>
                <td class="gray">성별</td>
                <td>
                    <input type=radio name="gender" value=남>남
                    <input type=radio name="gender" value=여 checked>여
                </td>
            </tr>
            <tr>
                <td class="gray">국적</td>
                <td>
                    <input readonly="readonly" value="대한민국" size="20">
                    <input type=button value="국적 변경">
                </td>
            </tr>
            <tr>
                <td class="gray">휴대폰</td>
                <td>
                    <select name="phone1">
                        <option value=010 selected>010</option>
                        <option value=011>011</option>
                        <option value=017>017</option>
                        <option value=070>070</option>
                        <option value=080>080</option>
                    </select>
                    - <input type=text size="2" name="phone2"> - <input type=text size="2" name="phone3">
                </td>
            </tr>
            <tr>
                <td class="gray">이메일</td>
                <td><input type=email size="30" name="email"></td>
            </tr>
            <tr>
                <td class="gray">생일</td>
                <td><input type=date name="birth"></td>
            </tr>
            <tr>
                <td class="gray">관심분야</td>
                <td>
                    <input type=checkbox name=hobby value=뉴스>뉴스
                    <input type=checkbox name=hobby value=맛집 checked>맛집
                    <input type=checkbox name=hobby value=책>책
                    <input type=checkbox name=hobby value=영화>영화
                    <input type=checkbox name=hobby value=여행>여행
                </td>
            </tr>
            <tr>
                <td class="gray">가입인사</td>
                <td><textarea cols="50" rows="7" name="memo">회원들에게 간단한 가입인사를 남겨주세요.</textarea></td>
            </tr>
            <tr>
                <td class="gray">증명사진</td>
                <td><input type=file></td>
            </tr>
            <tr>
                <td class="gray" colspan="2">
                    <input type=submit value="가입하기">
                    <input type=reset value="다시 작성">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
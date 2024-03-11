<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc</title>
<style>
	table, tr, td{
	    border: solid 1px lightgray;
	    border-collapse: collapse;
	}
	
	.blue{
        background-color: #32ccfe;
	    width: 400px;
	    height: 80px;
	    font-size: 60px;
	    text-align: center;
	}
	
	input, select{
		display: block;
		margin: 0 auto;
		margin-bottom: 15px;
	}
	
    #button{
	    padding: 25px;
	}
	
	form{
	    width: 400px;
	    margin: 0 auto;
	}
</style>
</head>
<body>
	<form name="calculator" method="post" action="calc_result.jsp">
		<table>
		    <tr>
		        <td class="blue" colspan="2"><b><i>CalCuLaTor</i></b></td> 
		    </tr>
		    <tr>
		        <td><img src="image/cal.jpg"></td>
		        <td id="button">
					<input type="text" name="op1" value="0" style="text-align:center;">
		        	<select name="operator">
                        <option value=0 selected>+</option>
                        <option value=1>-</option>
                        <option value=2>*</option>
                        <option value=3>/</option>
                    </select>
		        	<input type="text" name="op2" value="0" style="text-align:center;">
		        	<input type="submit" value="=" readonly>
		        	<input type="text" name="result" disabled>
		        </td>
		    </tr>
		    <tr>
		        <td class="blue" colspan="2"></td>
		    </tr>
		</table>
	</form>
</body>
</html>
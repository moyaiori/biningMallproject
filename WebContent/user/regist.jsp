<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<table>
		<h1>회원가입</h1>
		<tr>
			<td>회원정보입력</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password"></td>
		</tr>
		<tr>
			<td>비밀번호확인</td>
			<td><input type="password"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type="date"></td>
		</tr>
		<tr>
			<td>성별</td>
			<td><select>
					<option>성별</option>
					<option>남자</option>
					<option>여자</option>
			</select></td>
		</tr>
		<tr>
			<td>이메일주소</td>
			<td><input type="text"></td>
		</tr>

		<tr>
			<td>연락처</td>
			<td><select>
			<option>010</option>
			<option>011</option>
			<option>017</option>
			<option>019</option>
			<option>070</option>
			</select><input type="text" size="4"><input
				type="text"  size="4"></td>
		</tr>

		<tr>
		<td>주소</td>
		<td><input type="text" placeholder="우편번호"></td><td><input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"></td>
		</tr>
		<tr><td></td><td colspan="2"><input type="text" id="sample2_address" size="35px" placeholder="한글주소"></td></tr>
		

	</table>


</body>
</html>
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
	<h2 align="center">환영합니다</h2>
	<table align="center">
	<tr><td colspan="2" align="center" >회원정보</td></tr>
	<tr>
	<td width="80">아이디</td>
	<td width="200">${member.memberId}</td>
	</tr>
	<tr>
	<td>이름</td>
	<td>${member.name}</td>
	</tr>
	<tr>
	<td>연락처</td>
	<td>${member.phoneNumber}-${member.phoneNumber2}-${member.phoneNumber3}</td>
	</tr>
	<tr>
	<td>이메일</td>
	<td>${member.email}</td>
	</tr>
	<tr>
	<td>주소</td>
	<td>${member.address} - ${member.address2}</td>
	</tr>
	</table>

</body>
</html>
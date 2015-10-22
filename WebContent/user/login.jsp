<%@ page contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">




<form action="../user/loginProc.bins" method="post">
	<div class="container col-md-8 col-md-offset-2">
			<table class="table">
				<colgroup>
					<col width="150" />
					<col width="275" />
					<col width="150" />
					<col width="275" />
					<col width="150" />
				</colgroup>
			</table>
	
	
	</div>

</form>



<form action="../user/loginProc.bins" method="post">
	<table>
		<tr><td>로그인</td></tr>
		<tr>
		<td>아이디</td>
			<td><input type="text" name="memberId"></td>
			<td rowspan="2"><input type="submit" value="로그인" style="height:46px"></td>
			<td>Bin's회원이 되시면 편리한 이용이 가능 합니다.</td>
			<td><input onclick ="location.href='../user/regist.bins'" type="button" value="회원가입"></td>
			</tr>
			<tr><td>비밀번호</td>
			<td><input type="password" name="passwd"></td>
		<td>회원아이디와 비밀번호가 생각 나지 않으세요?</td>
		<td><input onclick="location.href='../user/userinforsearch.bins'" type="button" value="ID/PW찾기"></td>
		</tr>
	</table>
</form>
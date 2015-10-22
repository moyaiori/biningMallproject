<%@ page contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">

<style>

.table>tbody>tr>td{
	vertical-align: middle;
}

form {
	vertical-align: middle;
	margin: 0px auto;
	padding: 70px 0px 130px;
}

</style>

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
				
				<tr class="active" style="text-align: center;">
					<td colspan="6"><h3>로 그 인</h3></td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" class="form-control"></td>
					<td><input type="submit" class="btn btn-default" value="로그인"></td>
					<td>Bin's회원이 되시면 편리한 이용이 가능 합니다.</td>
					<td><input type="button" class="btn btn-default" value="회원가입"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" class="form-control"></td>
					<td></td>
					<td>회원아이디와 비밀번호가 생각 나지 않으세요?</td>
					<td><input type="button" class="btn btn-default" value="ID/PW찾기"></td>
				</tr>
			</table>
	
	
	</div>

</form>

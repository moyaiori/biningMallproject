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
	font-family:hy강m;
	font-size: 12;
}

form {
	vertical-align: middle;
	margin: 0px auto;
	font-family:hy강m;
	font-size: 20;
	padding: 20px 130px 13px;
}
</style>

<form action="../user/loginProc.bins" method="post">
	<div class="container col-md-8 col-md-offset-2">
			<table class="table">
				<colgroup>
					<col width="200" />
					<col width="200" />
					<col width="200" />
				</colgroup>
				
				<p class="j_p">
				<font class="j_txt">L </font>O G I N</p>
				
				<tr>
					<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">아이디</td>
					<td><input type="text" class="form-control" name="memberId"></td>
					<td><input type="submit" class="btn btn-danger" value="로그인"></td></tr>
				
				<tr>
					<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">비밀번호</td>
					<td><input type="password" class="form-control" name="passwd"></td>
					<td></td>
					</tr>
					
						<tr>
					<td colspan='2' style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">Bin's회원이 되시면 편리한 이용이 가능 합니다.</td>
					<td><input onclick="location.href='../user/regist.bins'" type="button" class="btn btn-danger" value="회원가입" ></td>
				</tr>
				
					
					
					<tr>
					<td colspan='2' style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">회원아이디와 비밀번호가 생각 나지 않으세요?</td>
					<td><input onclick="location.href='../user/userinforsearch.bins'" type="button" class="btn btn-danger" value="ID/PW찾기" size="20"></td>
				</tr>
			</table>
	</div>

</form>

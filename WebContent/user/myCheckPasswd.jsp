<%@ page contentType="text/html; charset=utf-8"%>
<script>
	function check(){
		if(document.form.passwd.value == ""){
			alert("비밀번호를 입력해주세요");
			return false;
		}
	}
</script>
<style>
.table>tbody>tr>td {
	vertical-align: middle;
	font-family: hy강m;
	font-size: 12;
}

form {
	vertical-align: middle;
	margin: 0px auto;
	font-family: hy강m;
	font-size: 20;
	padding: 20px 130px 13px;
}
</style>

<p class="j_p">
	<font class="j_txt">확 </font>인 해 주 세 요
</p>

<form action="../user/myCheckPasswdProc.bins" method="post" name="form">
	<div class="container col-md-8 col-md-offset-2">

		<table class="table" name="table">
			<colgroup>
				<col width="200" />
				<col width="200" />
				<col width="200" />
			</colgroup>
			<tr>
				<td
					style="text-align: center; vertical-align: middle; font-size: 14px; font-weight: bold">비밀번호</td>
				<td><input type="password" class="form-control" name="passwd" id="passwd"></td>
				<td><input type="submit" class="btn btn-danger" value="확인" onclick="return check()"></td>
			</tr>
		</table>
	</div>

</form>

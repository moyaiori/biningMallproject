<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<script>
	window.onload = function(){
		var searchId = document.getElementById("searchId");
		var searchPass = document.getElementById("searchPass");
		
		searchId.onclick = function(){
			var searchName = document.getElementById("searchName").value;
			var email = document.getElementById("email").value;
			window.location.href = "idsearch.bins?name=" + searchName.trim() + "&email=" + email.trim();
		}
		
		searchPass.onclick = function(){
			var id = document.getElementById("id").value;
			var email = document.getElementById("email2").value;
			window.location.href = "passwdsearch.bins?id=" + id.trim() + "&email=" + email.trim();
		}
	}
</script>


<style>
.container {
	vertical-align: middle;
	margin: 0px auto;
	padding: 70px 0px 130px;
}

.table>tbody>tr>td {
	vertical-align: middle;
	text-align: center;
}
</style>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<table class="table">
					<colgroup>
						<col width="500" />
						<col width="500" />
					</colgroup>
					<tr>
						<td class="active" colspan="2" style="text-align: center"><h2>아이디 찾기</h2></td>
					</tr>
					<tr>
						<td><h3>이름</h3></td>
						<td><input type="text" class="form-control" id="searchName"></td>
					</tr>
					<tr>
						<td><h3>이메일</h3></td>
						<td><input type="text" class="form-control" id="email"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="button"	class="btn btn-default" id="searchId" value="아이디찾기">
						<input type="button" class="btn btn-default" value="취소"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<table class="table">
					<colgroup>
						<col width="500" />
						<col width="500" />
					</colgroup>
					<tr>
						<td class="active" colspan="2" style="text-align: center" ><h2>비밀번호	찾기</h2></td>
					</tr>
					<tr>
						<td><h3>아이디</h3></td>
						<td><input type="text" class="form-control" id="id"></td>
					</tr>
					<tr>
						<td><h3>이메일</h3></td>
						<td><input type="text" class="form-control" id="email2"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="button" id="searchPass" class="btn btn-default" value="비밀번호찾기">
						<input type="button" class="btn btn-default" value="취소"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

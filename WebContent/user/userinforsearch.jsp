<%@ page contentType="text/html; charset=utf-8"%>
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
	font-family:hy강m;
}

.table>tbody>tr>td{
	text-align:center;
	vertical-align: middle;
	font-family:hy강m;
	font-size: 15;
}

</style>



		<p class="j_p">
				<font class="j_txt">U </font>S E R I N F O</p>

	<div class="container" style="margin-left: 90px">
		<div class="row" style=" float: left; width: 50%">
			<div class="col-md-6 col-md-offset-3">
				<table class="table" style="width: 	400px">
					<tr>
						<td colspan="3" class="active" style="text-align: center">아이디 찾기</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">이름</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="searchName"></td>
						<td style="vertical-align: middle;"><input type="button" class="btn btn-danger" id="searchId" value="아이디찾기"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">이메일</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="email"></td>
						<td style="vertical-align: middle;"><input type="button" class="btn btn-danger" value="취소"></td>
					</tr>
					<tr><td colspan="3"></tr>
						</table>
			</div>
			</div>
					
			<div class="row" style=" float: left; width: 50%">
			<div class="col-md-6 col-md-offset-3">
			<table class="table" style="width: 400px">
					<tr>
						<td class="active" colspan="3" style="text-align: center" >비밀번호찾기</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">아이디</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="id"></td>
						<td style="vertical-align: middle;"><input type="button" id="searchPass" class="btn btn-danger" value="비밀번호찾기">
					</tr>
					<tr>
						<td style="vertical-align: middle;">이메일</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="email2"></td>
						<td style="vertical-align: middle;"><input type="button" class="btn btn-danger" value="취소"></td>
					<tr><td colspan="3"></tr>
				</table>
	
					
		</div>
	</div>
	</div>

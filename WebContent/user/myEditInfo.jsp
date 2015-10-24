<%@ page contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../js/ajax.js"></script>
<script src="../js/loginCheck.js"></script>

<script type="text/javascript">

window.onload = function(){
	document.getElementsByName("phone")[0].value = '${member.phoneNumber}';
}

</script>

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
	padding: 20px 130px 130px;
}
</style>

<jsp:include page="myPageMenu.jsp"></jsp:include>

<div class="container col-md-8 col-md-offset-2">
		<p class="j_p">
				<font class="j_txt">M </font>Y 　P A G E</p>
	<form action="../user/myEditInfoProc.bins" method="post" name="addjoin">
		<table class="table">
			<colgroup>
					<col width="100" />
					<col width="200" />
				</colgroup>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이름</td>
				<td><input type="text" class="form-control" name="name" value="${member.name }"></td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이메일주소</td>
				<td><input type="text" class="form-control" name="email" value="${member.email }"><span id="emailmessageBox"></span></td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">연락처</td>
				<td class="form-inline">
					<div class="form-group">
					<select class="form-control" name="phone">
						<option>010</option>
						<option>011</option>
						<option>017</option>
						<option>019</option>
						<option>070</option>
					</select>
				　-　<input type="text"  size="12" class="form-control" name="phone2" value="${member.phoneNumber2}">
				　-　<input type="text"  size="12" class="form-control" name="phone3" value="${member.phoneNumber3}">
				</div>
				</td>
			</tr>
	
			<tr>
			<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">주소</td>
			<td><input id="post" name="post" type="text" placeholder="우편번호" class="form-control-post">
			<input type="button" onclick="searchPost()" value="우편번호 찾기" class="btn btn-danger"></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="text" id="address"  name="address" size="20px" placeholder="기본주소" class="form-control" value="${member.address }"></td>
			</tr>
			
			<tr>
			<td></td>
			<td><input type="text" id="address2" name="address2" size="20px" placeholder="상세주소" class="form-control" value="${member.address2 }"></td>
			</tr>
			<tr>
	
			<td></td>
			<td><input type="submit" value="정보 수정" class="btn btn-danger" onclick="return check()">
			</tr>
		</table>
	</form>
</div>
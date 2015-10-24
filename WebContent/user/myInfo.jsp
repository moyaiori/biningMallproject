<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/ajax.js"></script>


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
				<font class="j_txt">M </font>Y 　I N F O</p>
	<form action="registProc.bins" method="post" name="addjoin">
		<table class="table">
			<colgroup>
					<col width="100" />
					<col width="200" />
				</colgroup>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">아이디</td>
				<td>${member.memberId }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이름</td>
				<td>${member.name }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">생년월일</td>
				<td>${member.birth }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이메일주소</td>
				<td>${member.email }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">연락처</td>
				<td>${member.phoneNumber }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">주소</td>
				<td>${member.address }</td>
			</tr>
			<tr>
				<td></td>
				<td>${member.address2 }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">적립금</td>
				<td>${member.point }</td>
			</tr>
		</table>
	</form>
</div>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/ajax.js"></script>


<p class="j_p">
				<font class="j_txt">M </font>Y 　I N F O</p>

<jsp:include page="myPageMenu.jsp"></jsp:include>

<div class="container col-md-8 col-md-offset-2" >
		
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
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이메일주소</td>
				<td>${member.email }</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">연락처</td>
				<td>${member.phoneNumber} - ${member.phoneNumber2} - ${member.phoneNumber3 }</td>
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
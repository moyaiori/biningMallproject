<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<script>
	window.onload = function(){
		document.getElementById("back").onclick = function(){
			history.back();
		}
	}
</script>

	<div class="container">
		<div class="col-md-10 col-md-offset-1">
		<table class="table">
			<tr>
				<th class="active">글제목</th>
				<td colspan="3">${article.subject}</td>
			</tr>
			<tr>
				<th class="active">작성자</th>
				<td>${article.memberId}</td>
				<th class="active">작성일</th>
				<td>${article.regdate}</td>
			</tr>
			<tr>
				<th class="active">조회수</th>
				<td>${article.hitcount}</td>
			</tr>
		
			<tr>
				<td colspan="4" style="padding: 10px 30px">
					<textarea class="form-control" rows="10" cols="10" readonly style="resize:none;">${article.content}</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: right;">
				<c:if test="${cookie.loginId.value == 'admin'}">
					<input class="btn btn-default" type="button" value="수정하기"> 
				</c:if>
					<input class="btn btn-default" type="button" value="돌아가기" id="back"> 
				</td>
			</tr>
		</table>
		</div>
	</div>

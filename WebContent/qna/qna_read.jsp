<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -23 : 15시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css"
	href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css"
	href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<body>
<div class="container">
	<div class="col-md-10 col-md-offset-1">
	<table class="table">
		<thead>
			<tr>
				<th scope="row">제목</th>
				<td colspan="3">${qna.subject}</td>
			</tr>
			<tr>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">작성자</th>
				<td>${qna.memberId}</td>
				<th scope="row">작성일</th>
				<td>${qna.regdate}</td>
			</tr>
			<tr>
				<th class="active">조회수</th>
				<td>${qna.hitcount}</td>
			</tr>

			<tr>
			<th>내용</th>
				<td class="cont" colspan="6">${qna.content}</td>
			</tr>
		</tbody>
	</table>
	<input onclick="location.href='../qna/qna_view.bins'" type="button"
		value="목록" />
	<c:if test="${cookie.loginId.value.equals('admin')}" >
		<input onclick="location.href='../qna/qna_write.bins'" type="button" class="btn btn-default" value="답글쓰기"  />
	</c:if>
	<c:if test="${cookie.loginId.value.equals('qna.memberId')}" >
		<input onclick="location.href='../qna/qna_write.bins'" type="button" class="btn btn-default" value="답글쓰기"  />
	</c:if>
	</div>
</div>
</body>
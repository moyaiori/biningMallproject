<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -22 : 17시
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<% 
	String articleId = request.getParameter("articleId");
	String writer = request.getParameter("writer");
%>
<body>
	<div class="container">
		<form class="col-md-8 col-md-offset-2" action="qnaRegistProc.bins"
			method="post">
			<table class="table" >
				<thead>
					<tr>
						<th class="col-md-2">글제목</th>
						<td colspan="3"><input class="form-control" type="text"
							name="subject" size="30" /></td>
							<td class="col-md-2"></td>
					</tr>
				</thead>
					<tr>
						<th scope="row">작성자</th>
						<td><input class="form-control" type="text" name="memberId"
							disabled size="30" value="${cookie.loginId.value}" /></td>
					</tr>
					<tr>
						<td class="cont" colspan="5"><input type="text"
							name="content" style="width: 100%; height: 500px"></td>
					</tr>
			<tr>
			<td>
			<input type="hidden" name="articleId" value=<%=articleId %>>
			<input type="hidden" name="memberId" value=<%=writer%>>
			<input class="btn btn-default" type="submit" value="작성완료" /></td>
		<td><input class="btn btn-default" type="button" src="../qna/qna_view.bins" value="목록" style="float: right;" /></td>
		</tr>
		</table>
		</form>
	</div>
</body>
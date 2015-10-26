<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -23 : 15시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String articleId = request.getParameter("articleId");
%>
<body>
<div class="container" style="margin-left: 185px">
	<div class="col-md-10 col-md-offset-1" >
	<table class="table" style="width: 70%">
			<tr>
				<th class="active">제목</th>
				<td colspan="3">${qna.subject}</td>
			</tr>
			
			<tr>
				<th class="active">작성자</th>
				<c:choose>
				<c:when test="${qna.stepNum == '2'}">
					<td>admin</td>
				</c:when>
				<c:otherwise>
					<td>${qna.memberId}</td>
				</c:otherwise>
			</c:choose>
				
				<th class="active">작성일</th>
				<td>${qna.regdate}</td>
			</tr>
			<tr>
				<th class="active">조회수</th>
				<td colspan='3'>${qna.hitcount}</td>
			</tr>

			<tr>
				<td  colspan="4" style="padding: 10px 30px">
				<textarea class="form-control" rows="10" cols="10" readonly style="resize:none;">${qna.content}</textarea>
				</td>
			</tr>
			<tr><td colspan="3" style="padding: 0 0 0 0"></td></tr>
			
	</table>
	<input onclick="location.href='../qna/qna_view.bins'" type="button" class="btn btn-danger" value="목록" />
	<c:if test="${qna.stepNum==0}">
		<c:if test="${cookie.loginId.value == 'admin'}" >
			<input onclick="location.href='../qna/qna_write.bins?articleId=<%=articleId%>&writer=${qna.memberId}'" type="button" class="btn btn-danger" value="답글쓰기"  />
		</c:if>
	</c:if>
	<c:choose>
		<c:when test="${qna.stepNum ==2}">
			<c:if test="${cookie.loginId.value == 'admin'}" >
				<input onclick="location.href='../qna/qna_modify.bins?articleId=<%=articleId%>'" type="button" class="btn btn-danger" value="수정하기"  />
				<input onclick="location.href='../qna/qna_delete.bins?articleId=<%=articleId%>'" class="btn btn-danger" type="button" id="delete" value="삭제하기">
			</c:if>
		</c:when>
		<c:when test="${qna.stepNum == 0}">
			<c:if test="${cookie.loginId.value == qna.memberId}" >
				<input onclick="location.href='../qna/qna_modify.bins?articleId=<%=articleId%>'" type="button" class="btn btn-danger" value="수정하기"  />
				<input onclick="location.href='../qna/qna_delete.bins?articleId=<%=articleId%>'" class="btn btn-danger" type="button" id="delete" value="삭제하기">
			</c:if>
		</c:when>
		
	</c:choose>
	</div>
</div>
</body>
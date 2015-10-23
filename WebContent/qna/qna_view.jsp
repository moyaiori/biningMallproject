<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -23 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="container">
	<div class="content">
		<table cellpadding="0" cellspacing="0" border="0" class="table">
			<colgroup>
				<col width="75" />
				<col width="600" />
				<col width="110" />
				<col width="130" />
				<col width="85" />
			</colgroup>
			<tr class="active">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>

			<c:if test="${listSize - 1 >= 0}">
				<c:forEach begin="0" end="${articleList.size()-1}" var="i">
					<tr>
						<td>${listSize-i}</td>
						<td class=""><a
							href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}"><span><img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
						</td>
						<td><span class="">${articleList.get(i).memberId}</span></td>
						<td>${articleList.get(i).regdate}</td>
						<td>${articleList.get(i).hitcount}</td>
					</tr>
				</c:forEach>
			</c:if>

		</table>

	</div>
	<form class="form-inline" method="post" action="../qna/qna_view.bins">
		<div class="form-group">
			<select class="form-control" style="width: 95px;" name="searchType"
				id="">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="member_id">작성자</option>
			</select> 
			<input type="text" class="form-control" style="width: 200px;"	name="searchValue" required id="stx" /> 
			<input type="submit"	class="btn btn-default" value="검색" /> 
			<input onclick="location.href='../qna/qna_write.bins'" type="button"	class="btn btn-default" value="글쓰기" style="float: right;" />



		</div>
	</form>

	${pageNation}


</div>
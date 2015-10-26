<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -23 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
a.disabled {
   pointer-events: none;
   cursor: default;
}
</style>

<p class="j_p" style="margin-bottom: 40px">
				<font class="j_txt">Q </font>& <font class="j_txt"> A </font></p>


<div class="container" style="margin:0px auto">
	<div class="content">
		<table class="table" style="width: 100%">
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
					<c:set var="j" value="${articleList.get(i).stepNum}"/>
					<c:set var="writer" value="${articleList.get(i).memberId}"/>
					<c:set var="loginId" value="${memberId}"/>
					<tr>
						<td>${listSize-i}</td>
						<td>
						<c:if test="${j=='0'}">
						<c:choose>
							<c:when test="${loginId eq 'admin'}">
								<a href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}" >
								<span><img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
							</c:when>
							<c:when test="${writer eq loginId or writer=='admin'}">
								<a href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}" >
								<span><img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
							</c:when>
							<c:when test="${writer ne loginId}">
								<a href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}"  class="disabled">
								<span><img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
							</c:when>
						</c:choose>
						</c:if>
						
						<c:if test="${j=='2'}">
						<c:choose>
							<c:when test="${loginId eq 'admin'}">
								<a href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}" >
								<span style="margin-left:${articleList.get(i).stepNum}0px"><img src="../images/re.gif">
								<img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
							</c:when>
							<c:when test="${writer eq loginId}">
									<a href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}">
									<span style="margin-left:${articleList.get(i).stepNum}0px"><img src="../images/re.gif">
									<img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
							</c:when>
							
							<c:when test="${writer ne loginId}">
								<a href="../qna/qna_read.bins?articleId=${articleList.get(i).articleId}"  class="disabled">
								<span style="margin-left:${articleList.get(i).stepNum}0px">
								<img src="../images/re.gif"><img src="../images/lock.png"></span>${articleList.get(i).subject}</a>
							</c:when>
						</c:choose>
						</c:if>
				
				
				
						</td>
						<c:choose>
							<c:when test="${j=='0'}">
						<td>${articleList.get(i).memberId}</td>
							</c:when>
							<c:when test="${j=='2'}">
						<td>admin</td>
							</c:when>
						
						</c:choose>
						<td>${articleList.get(i).regdate}</td>
						<td>${articleList.get(i).hitcount}</td>
					</tr>
				</c:forEach>
			</c:if>

		</table>

	</div>
	<form class="form-inline" method="post" action="../qna/qna_view.bins" style="margin: 0px auto" >
	
		<div class="form-group ">
			<select class="form-control" style="width: 95px;" name="searchType"
				id="">
				<option value="subject">제목</option>
				<option value="content">내용</option>
				<option value="member_id">작성자</option>
			</select> 
			<input type="text" class="form-control" style="width: 200px;"	name="searchValue" required id="stx" /> 
			<input type="submit"	class="btn btn-danger" value="검색" />
			<c:if test="${cookie.loginId != null}">
				<input onclick="location.href='../qna/qna_write.bins'" type="button" class="btn btn-danger text-right" value="글쓰기" style="float: right" />
			</c:if>
		</div>
	</form>
	
	
	 <div class="text-center" style="width: 800px">
   ${pageNation}
  </div>
	


</div>
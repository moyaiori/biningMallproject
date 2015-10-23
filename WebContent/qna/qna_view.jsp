<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -23 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>

<div id="container">
	<div class="content">
		<p class="total">
			TOTAL <span>52</span>
		</p>
		<form name="" id="" action="" onsubmit="" method="post">
			<!-- 
			<input type="hidden" name="bo_table" value="inquiry">
			<input type="hidden" name="sfl" value="">
			<input type="hidden" name="stx" value="">
			 -->
			<table cellpadding="0" cellspacing="0" border="0" class="">
				<colgroup>
					<col width="75" />
					<col width="600" />
					<col width="110" />
					<col width="130" />
					<col width="85" />
				</colgroup>
				<tr>
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
								href="../notice/notice_read.bins?articleId=${articleList.get(i).articleId}">${articleList.get(i).subject}</a>
							</td>
							<td><span class="">${articleList.get(i).memberId}</span></td>
							<td>${articleList.get(i).regdate}</td>
							<td>${articleList.get(i).hitcount}</td>
						</tr>
					</c:forEach>
				</c:if>






				<tr>
					<td>52</td>
					<td class=""><a href="../qna/qna_read.bins?articleId=8">문의
							화면맞나요요요요??/ </a></td>
					<td><span class="">나미정</span></td>
					<td>14:47</td>

				</tr>

				<tr>
					<td>43</td>
					<td class=""><a href=""> 주문상태 확인 부탁드립니다. </a></td>
					<td><span class="">노대훈</span></td>
					<td>10-09</td>

				</tr>
				<tr>
					<td>43</td>
					<td class=""><a href=""> ▶ 주문상태 확인 완료 하였습니다. </a></td>
					<td><span class="">노대훈</span></td>
					<td>10-09</td>

				</tr>
			</table>
		</form>

		<nav class="">
			<a href="">&lt;</a> <a href="">&lt;&lt;</a> <a href="">1</a> <a
				href="">2</a> <a href="">3</a> <a href="">4</a> <a href="">5</a> <a
				href="">6</a> <a href="">&gt;</a> <a href="">&gt;&gt;</a>
	</div>
	</span>
	</nav>
	<form name="fsearch" method="get">
		<input type="hidden" name="bo_table" value="inquiry"> <input
			type="hidden" name="sca" value=""> <input type="hidden"
			name="sop" value="and">
		<div class="">
			<select class="" style="width: 160px;" name="sfl" id="">
				<option value="wr_subject">WRITER</option>
				<option value="wr_content">SUBJECT</option>
				<option value="wr_subject||wr_content">TITLE</option>
			</select> <input type="text" class="" style="width: 620px;" name="stx"
				value="" required id="stx" /> <input
				onclick="location.href='../qna/qna_view.bins'" type="button"
				value="검색" /> <input onclick="location.href='../qna/qna_write.bins'"
				type="button" class="btn btn-default" value="글쓰기" />
		</div>
	</form>
</div>
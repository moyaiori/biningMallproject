<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -22 : 17시
 -->
<%@ page contentType="text/html; charset=utf-8"%>	
<body>
<div class="container">

	<table class="tbl_view" cellspacing="0" summary="글 내용을 표시" border="1">
					<form action="qnaRegistProc.bins"  method="post">
						<thead>
							<tr>
								<th scope="row">글번호</th>
								<td colspan="1">2</td>
								<th scope="row">제목</th>
								<td colspan="3"><input class="form-control" type="text" name="subject" size="30"/></td>
							</tr>
							<tr>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">작성자</th>
								<td><input class="form-control" type="text" name="memberId" disabled size="30" value=""/></td>
								<th scope="row">작성일</th>
								<td>2015-02-03</td>
								<th scope="row">만족도</th>
								<td>***** </td>
							</tr>

							<tr >
								<td class="cont" colspan="7" >
								<input type="text" name="content"  style="width: 100%; height: 500px" >
								</td>
							</tr>				
						</tbody>
						</table>
						<input type="submit" value="작성완료"/>
					</form>
						<input type="button" src="" value="목록"/>
</div>
</body>
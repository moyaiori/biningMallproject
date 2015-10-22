<!-- 
	레이아웃 작성자 : 조현빈 
	레이아웃 수정 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -22 : 15시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">	
<body>
	<table class="tbl_view" cellspacing="0" summary="글 내용을 표시" border="1">
					<form name=""  id="" action="" onsubmit="" method="post">
						<thead>
							<tr>
								<th scope="row">글번호</th>
								<td colspan="1">2</td>
								<th scope="row">제목</th>
								<td colspan="3">제목 보여주는 란.</td>
							</tr>
							<tr>
							
							</tr>
						
						</thead>
						<tbody>
							<tr>
								<th scope="row">만족도</th>
								<td>*****</td>
								<th scope="row">작성자</th>
								<td>webmaster</td>
								<th scope="row">작성일</th>
								<td>2015-02-03</td>
							</tr>

							<tr>
								<td class="cont" colspan="6">
								내용작성
								</td>
							</tr>				
						</tbody>
						</table>
			
					</form>
						<input onclick="location.href='../qna/qna_view.bins'" type="button"  value="목록"/>
						<input onclick="location.href='../qna/qna_write.bins'" class="btn btn-default" type="button" value="답글달기">
						
						
</body>
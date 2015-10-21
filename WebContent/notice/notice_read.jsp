<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">


	<div class="container">
		<div class="col-md-10 col-md-offset-1">
		<table class="table">
			<tr>
				<th class="active">글제목</th>
				<td colspan="3">임시제목</td>
			</tr>
			<tr>
				<th class="active">작성자</th>
				<td>임시작성자</td>
				<th class="active">작성일</th>
				<td>2015-10-20</td>
			</tr>
			<tr>
				<th class="active">조회수</th>
				<td>300</td>
			</tr>
		
			<tr>
				<td colspan="4" style="padding: 10px 30px">
					<textarea class="form-control" rows="10" cols="10" readonly style="resize:none;">안녕</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: right;">
					<input onclick="location.href='../notice/notice_list.bins'" class="btn btn-default" type="submit" value="돌아가기"> 
					<input  onclick="location.href='../notice/notice_write.bins'" class="btn btn-default" type="button" value="답글달기">
				</td>
			</tr>
		</table>
		</div>
	</div>

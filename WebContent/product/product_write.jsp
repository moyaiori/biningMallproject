<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">



<div class="container">
	<form class="col-md-8 col-md-offset-2" method="post" action= "noticeRegistProc.bins">
		<table class="table">
			<tr>
				<th colspan="4">후기 쓰기</th>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input class="form-control" type="text" name="writer" disabled size="30" value="" style="width: 150px;"/></td>
			</tr>
			
			<tr>
				<td>만족도	</td>
				<td colspan="3">
					<label class="radio-inline"><input type="radio" name="optradio">Very Good</label>
					<label class="radio-inline"><input type="radio" name="optradio">Good</label>
					<label class="radio-inline"><input type="radio" name="optradio">Not bad</label>
					<label class="radio-inline"><input type="radio" name="optradio">Bad</label>
					<label class="radio-inline"><input type="radio" name="optradio">No Good</label>
				</td>
			</tr>
	
			<tr>
				<td>내용</td>
				<td colspan="3"><textarea class="form-control" name="content" rows="15" style="resize:none;"></textarea></td>
			</tr>
			
			
			<tr>
				<td colspan="4">
					<input type="submit" value="상품명 쓰기" class="btn btn-default col-md-2 col-md-offset-10">
				</td>
			</tr>
		</table>
	</form>
</div>


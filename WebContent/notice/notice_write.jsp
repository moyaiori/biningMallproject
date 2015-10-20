<%@ page contentType="text/html; charset=utf-8"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<div class="container">
	<form class="col-md-8 col-md-offset-2" method="post">
		<table class="table">
			<tr>
				<th colspan="4">※ 비밀번호는 글 수정, 삭제시 필요합니다.</th>
			</tr>
			<tr>
				<td class="col-md-2">글제목</td>
				<td><input class="form-control" type="text" name="subject" size="30"/></td>
				<td class="col-md-2"></td>
			</tr>
	
			<tr>
				<td>작성자</td>
				<td><input class="form-control" type="text" name="writer" disabled size="30" value=""/></td>
				<td>이메일</td>
				<td><input class="form-control" type="text" disabled size="30" value=""/></td>
			</tr>
	
			<tr>
				<td>글내용</td>
				<td colspan="3"><textarea class="form-control" name="content" rows="15" style="resize:none;"></textarea></td>
			</tr>
			
			<tr>
				<td colspan="4">
					<input type="submit" value="글쓰기" class="btn btn-default col-md-2 col-md-offset-10">
				</td>
			</tr>
		</table>
	</form>
</div>
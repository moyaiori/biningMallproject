<%@ page contentType="text/html; charset=utf-8"%>
<script> 
    function check(){
		if(document.noticeWriteForm.subject.value==""){
			alert("공지글 제목을 입력하세요.");
			return false;
		}else if(document.noticeWriteForm.content.value==""){
			alert("공지글 내용을 입력하세요.");
			return false;
		}
	}
    
    window.onload = function() {
		document.getElementById("back").onclick = function() {
			/* 	history.back(); */

			location.href = "../notice/notice_list.bins";
		}
    }
</script>


<div class="container">
	<form class="col-md-8 col-md-offset-2" method="post" action= "../notice/notice_modify_proc.bins" name="noticeWriteForm">
		<table class="table">
			<tr>
				<th colspan="4">※ 비밀번호는 글 수정, 삭제시 필요합니다.</th>
			</tr>
			<input type="hidden" value="${article.articleId}" name="articleId">
			<tr>
				<td >글제목</td>
				<td  colspan="4"><input class="form-control" type="text" name="subject" size="30" value="${article.subject}"/></td>
			
			</tr>
			<tr>
				<td>작성자</td>
				<td><input class="form-control" type="text" name="memberId" disabled size="30" value="${cookie.loginId.value}"/></td>
			
			</tr>
			<tr>
				<td>글내용</td>
				<td colspan="3"><textarea class="form-control" name="content" rows="15" style="resize:none;" >${article.content}</textarea></td>
			</tr>
			<tr>
				<tr>
					<td colspan="4" style="text-align: right;">
						<input type="submit" value="수정완료" class="btn btn-danger" onclick="return check()">
						 <input class="btn btn-danger" type="button" value="돌아가기" id="back"></td>
				</tr>
			</tr>
		</table>
	</form>
</div>


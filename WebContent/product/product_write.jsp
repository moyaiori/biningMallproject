<%@ page contentType="text/html; charset=utf-8"%>
<script src="../js/ajax2.js"></script>
<script> 
window.onload = function(){
	
	
	var form = document.getElementById("writeid");
    form.onclick = function(){
		if(document.WriteForm.content.value==""){
	         alert("내용을 입력해주세요");
	         return false;
	      } 
  }
}
</script>
<div class="container">
	<form class="col-md-8 col-md-offset-2" method="post" action= "commentRegistProc.bins" name="WriteForm">
		<table class="table">
			<tr>
				<th colspan="4">후기 쓰기</th>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input class="form-control" type="text" name="writer" disabled size="30" value="${cookie.loginId.value}" style="width: 150px;"/></td>
			</tr>
			
			<tr>
				<td>만족도</td>
				<td colspan="3">
					<label class="radio-inline"><input type="radio" name="satisfaction" value="매우만족" checked="true">매우 만족</label>
					<label class="radio-inline"><input type="radio" name="satisfaction" value="만족">만족</label>
					<label class="radio-inline"><input type="radio" name="satisfaction" value="보통">보통</label>
					<label class="radio-inline"><input type="radio" name="satisfaction" value="불만족">불만족</label>
					<label class="radio-inline"><input type="radio" name="satisfaction" value="매우불만족">매우불만족</label>
				</td>
			</tr>
	
			<tr>
				<td>내용</td>
				<td colspan="3"><textarea class="form-control" name="content" rows="15" style="resize:none;"></textarea></td>
			</tr>
			
			
			<tr>
				<td colspan="4">
					<input type="submit" id ="writeid" value="상품명 쓰기"   class="btn btn-danger" style="float:right;" >
				</td>
			</tr>
		</table>
		<input type="hidden" name="memberId" value="${cookie.loginId.value}"/>
		<input type="hidden" name="productId" value="${productId}"/>
	</form>
</div>


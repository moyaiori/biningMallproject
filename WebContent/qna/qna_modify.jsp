<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -22 : 17시
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<% 
	String articleId = request.getParameter("articleId");
	String writer = request.getParameter("writer");
%>
<script> 
window.onload = function(){
   
   var form = document.getElementById("writeId");
    form.onclick = function(){
    	 if(document.getElementById("subject").value==""){
              alert("제목을 입력해주세요");
              return false;
           } 
    	if(document.getElementById("content").value==""){
            alert("내용을 입력해주세요");
            return false;
         } 
  }
}
</script>

<body>

<p class="j_p" style="margin-bottom: 20px">
				문 의 사 항</p>
	
	<div class="container" style="margin-left: 150px">
    
            
		<form class="col-md-8 col-md-offset-2" action="../qna/qna_modify_proc.bins" method="post">
			<table class="table" style="width: 70%">
				<thead>
					<tr >
						<th class="col-md-2" style="vertical-align: middle; text-align: center; border-bottom-width: 1px">글제목</th>
						<td colspan="3">
						<input class="form-control" id="subject" type="text"
							name="subject" size="30" value="${qna.subject}"/>
					
					</tr>
				</thead>
					<tr>
						<th scope="row" style="vertical-align: middle; text-align: center;">작성자</th>
						<td><input class="form-control" type="text" name="memberId"
							disabled size="30" value="${cookie.loginId.value}" /></td>
					</tr>
					<tr>
						<td class="cont" colspan="5">
						<textarea class="form-control" id="content" name="content" rows="15" style="resize:none;">${qna.content}</textarea></td>
					</tr>
			<tr>
			<td>
			<input type="hidden" name="articleId" value=<%=articleId %>>
			<input type="hidden" name="memberId" value=<%=writer%>>
			<input class="btn btn-danger" type="submit" value="작성완료" /></td>
		<td><input onclick="location.href='../qna/qna_view.bins'" type="button" class="btn btn-danger" value="목록"  style="float: right;"/>
		</tr>
		</table>
		</form>
	</div>
</body>
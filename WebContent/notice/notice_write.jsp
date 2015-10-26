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
</script>


<div class="container">
   <form class="col-md-8 col-md-offset-2" method="post" action= "noticeRegistProc.bins" name="noticeWriteForm">
      <table class="table">
         <tr>
            <th colspan="4">※ 비밀번호는 글 수정, 삭제시 필요합니다.</th>
         </tr>
         <tr>
            <td  style="text-align: center;">글제목</td>
            <td colspan="4"><input class="form-control" type="text" name="subject" size="10"/></td>
         </tr>
         <tr>
            <td style="text-align: center;">작성자</td>
             <td colspan="4"><input class="form-control" type="text" name="memberId" disabled size="10" value="${cookie.loginId.value}"/></td>
            <td></td>
         </tr>
         <tr>
            <td style="text-align: center;">글내용</td>
            <td colspan="4"><textarea class="form-control" name="content" rows="10" style="resize:none;"></textarea></td>
         </tr>
         <tr>
            <td colspan="4">
         
               <input type="submit" value="글쓰기" class="btn btn-danger col-md-2 col-md-offset-10" onclick="return check()">
            </td>
         </tr>
      </table>
   </form>

</div>

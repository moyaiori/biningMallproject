<%@ page contentType="text/html; charset=utf-8"%>
<script>
	window.onload = function(){
		var searchId = document.getElementById("searchId");
		var searchPass = document.getElementById("searchPass");
		
		searchId.onclick= function(){
			var searchName = document.getElementById("searchName").value;
			var email = document.getElementById("email").value;
	     if(document.getElementById("searchName").value==""){
	         alert("이름을 입력하세요.");
	         return false;
	      }else if(document.getElementById("email").value==""){
	         alert("아이디를 전송받을 이메일을 입력하세요.");
	         return false;
	      }else{
	    		window.location.href = "idsearch.bins?name=" + searchName.trim() + "&email=" + email.trim();
	    	  return true;
	      } 
	   } 

		searchPass.onclick= function(){
			var id = document.getElementById("id").value;
			var email = document.getElementById("email2").value;
			
		     if(document.getElementById("id").value==""){
		         alert("아이디를 입력하세요.");
		         return false;
		      }else if(document.getElementById("email2").value==""){
		         alert("비밀번호를 전송받을 이메일을 입력하세요.");
		         return false;
		      }else{
		    		window.location.href = "passwdsearch.bins?id=" + id.trim() + "&email=" + email.trim();
			    	  return true;
			  } 
		   }
		
		pwreset.onclick= function(){
		
			document.getElementById("id").value="";
			document.getElementById("email2").value="";
		 
		}
		
		idreset.onclick= function(){
			
			document.getElementById("searchName").value="";
			document.getElementById("email").value="";
		 
		}
	}
	



</script>


<style>

.table>tbody>tr>td{
	text-align:center;
	vertical-align: middle;
	font-family:hy강m;
	font-size: 15;
}

</style>

		<p class="j_p" style="margin-bottom: 40px">
				<font class="j_txt">U </font>S E R I N F O</p>

	<div class="container" style="margin-left: 90px">
		<div class="row" style=" float: left; width: 50%">
			<div class="col-md-6 col-md-offset-3">
				<table class="table" style="width: 	400px" >
					<tr>
						<td colspan="3" class="active" style="text-align: center">아이디 찾기</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">이름</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="searchName"></td>
						<td style="vertical-align: middle;"><input type="button" class="btn btn-danger" id="searchId" value="아이디찾기" ></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">이메일</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="email"></td>
						<td style="vertical-align: middle;"><input type="button" class="btn btn-danger" id="idreset" value="취소"></td>
					</tr>
					<tr><td colspan="3"></tr>
						</table>
			</div>
			</div>
					
			<div class="row" style=" float: left; width: 50%">
			<div class="col-md-6 col-md-offset-3">
			<table class="table" style="width: 400px">
					<tr>
						<td class="active" colspan="3" style="text-align: center" >비밀번호찾기</td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">아이디</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="id"></td>
						<td style="vertical-align: middle;"><input type="button" id="searchPass" class="btn btn-danger" value="비밀번호찾기">
					</tr>
					<tr>
						<td style="vertical-align: middle;">이메일</td>
						<td style="vertical-align: middle;"><input type="text" class="form-control" id="email2"></td>
						<td style="vertical-align: middle;"><input type="button" id="pwreset" class="btn btn-danger" value="취소" ></td>
					<tr><td colspan="3"></tr>
				</table>
	
					
		</div>
	</div>
	</div>

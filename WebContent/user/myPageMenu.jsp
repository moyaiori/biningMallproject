<%@ page contentType="text/html; charset=utf-8"%>
<script type="text/javascript">

window.onload = function(){
	document.getElementById("myInfo").onclick = function(){
		console.log("myInfo");
		window.location.href = "../user/myInfo.bins";
	}
	
	document.getElementById("myEditInfo").onclick = function(){
		console.log("myEditInfo");
		window.location.href = "../user/myCheckPasswd.bins";
	}
	
	document.getElementById("myOrder").onclick = function(){
		console.log("myOrder");
		window.location.href = "../user/orderListView.bins";
	}
}


</script>


<style>

.btn-group button{
	width: 240px;
	height: 40px;
}

</style>


<div class="btn-group col-md-12 col-md-offset-3" role="group">
  <button type="button" class="btn btn-danger" id="myInfo">나의 정보</button>
  <button type="button" class="btn btn-danger" id="myEditInfo">정보 수정</button>
  <button type="button" class="btn btn-danger" id="myOrder">주문 내역</button>
</div>
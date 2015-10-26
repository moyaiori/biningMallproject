<%@ page contentType="text/html; charset=utf-8"%>
<script type="text/javascript">
function myInfoOnClick(){
	console.log("myInfo");
	window.location.href = "../user/myInfo.bins";
}

function myEditInfoOnClick(){
	console.log("myEditInfo");
	window.location.href = "../user/myCheckPasswd.bins";
}

function myOrderOnClick(){
	console.log("myOrder");
	window.location.href = "../user/orderListView.bins";
}

</script>


<style>

.btn-group button{
	width: 270px;
	height: 40px;
}

</style>


<div class="btn-group col-md-12 col-md-offset-3" role="group">
  <button type="button" class="btn btn-danger" id="myInfo" onclick="myInfoOnClick()">나의 정보</button>
  <button type="button" class="btn btn-danger" id="myEditInfo" onclick="myEditInfoOnClick()">정보 수정</button>
  <button type="button" class="btn btn-danger" id="myOrder" onclick="myOrderOnClick()">주문 내역</button>
</div>
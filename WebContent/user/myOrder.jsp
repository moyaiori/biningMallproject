<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/ajax.js"></script>
<style>
.table>tbody>tr>td{
	vertical-align: middle;
	font-family:hy강m;
	font-size: 12;
}

form {
	vertical-align: middle;
	margin: 0px auto;
	font-family:hy강m;
	font-size: 20;
	padding: 20px 130px 130px;
}
</style>

<jsp:include page="myPageMenu.jsp"></jsp:include>

<div class="container col-md-8 col-md-offset-2">
		<p class="j_p">
				<font class="j_txt">M </font>Y 　O R D E R</p>
	<table class="table" id="table">
   <thead> 
   <tr class="active">
      <th>주문 번호</th>
      <th>상품명</th>
      <th>주문일</th>
      <th>총 주문금액</th>
      <th>상세보기</th>
      <th></th>
   </thead>
   <tbody id="tbody">
      <c:forEach items="${orderList}" var="data">
         <tr>
            <td style="vertical-align: inherit;" class="number"> ${data.orderListNum} </td>
            	<td style="vertical-align: inherit;">${data.productName }</td>
            <td style="vertical-align: inherit;"> ${data.orderDate} </td>            
            <td style="vertical-align: inherit;"> ${data.totalPrice} </td>            
            <td style="vertical-align: inherit;"><a class="detail" style="cursor:pointer">상세보기</a></td>
         </tr>
      </c:forEach>
   </tbody>
</table>
</div>
<script>
	window.onload = function(){
		var nodeList = document.getElementsByClassName("number");
		var detailBtn = document.getElementsByClassName("detail");
		
		for ( var i in detailBtn) {
			detailBtn[i].onclick = function(){
				var listNum = this.parentNode.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.firstChild.nodeValue.trim();
				//window.location = "../order/orderDetail?listNum="+listNum;
				ajax({
					method: "post",
					url: "../order/orderDetail.bins",
					data: "listNum="+listNum,
					callback: function(xhr){
						setView(xhr);
					}
				});
			}
		}
		
		function setView(xhr){
			var table = document.getElementById("table");
			table.innerHTML = xhr.responseText;
		}
		
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
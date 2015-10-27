<!-- 
	작성일 : 2015/10/20
	작성자 : 가승호
	최종수정일 : 2015/10/20/ 17:15
 -->
 <%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>주문페이지</title>
<style type="text/css">

img {
	width: 100px;
}

.info tbody>tr>td{
    vertical-align: middle !important; 
}

.table td {
   text-align: center;   
}

.table th {
   text-align: center;   
}

.phoneFile{
	width: 100px !important;
	display: inline !important;
}

.postFile{
	width: 100px !important;
	display: inline !important;
}

.TagTd{
	line-height: 30px;
	padding-right: 10px;
}

.inputTd{
	padding-bottom: 10px;
}
</style>

<script type="text/javascript">


function setData(){
	document.getElementById("name").value = "${member.name}";
	document.getElementById("address").value = "${member.address}";
	document.getElementById("address2").value = "${member.address2}";
	document.getElementById("phoneNum1").value = "${member.phoneNumber}";
	document.getElementById("phoneNum2").value = "${member.phoneNumber2}";
	document.getElementById("phoneNum3").value = "${member.phoneNumber3}";
}

function clearData(){
	document.getElementById("name").value = "";
	document.getElementById("address").value = "";
	document.getElementById("address2").value = "";
	document.getElementById("phoneNum1").value = "";
	document.getElementById("phoneNum2").value = "";
	document.getElementById("phoneNum3").value = "";
}

window.onload = function(){
	var total = 0;
	var nodeList = document.getElementById("tbody").childNodes;
	for ( var i in nodeList) {
		if(nodeList[i].constructor == "function HTMLTableRowElement() { [native code] }"){
			var price = nodeList[i].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue;
			total+= parseInt(price);
		}
	}
	
	var price = document.getElementById("price");
	price.innerHTML = total;
	
	document.getElementById("checkbox").onchange = function(){
		if (this.checked == true) {
			setData();
		}else{
			clearData();
		}
	}
	
	//--------------- 가격 연산
	
	document.getElementById("total").textContent = document.getElementById("price").textContent;
	document.getElementById("payment").value =  document.getElementById("price").textContent;
	if(document.getElementById("usePoint").value == 0 || document.getElementById("usePoint") == null){
		document.getElementById("usePoint").value = 0;
	}

	var point = document.getElementById("point");							// 적립금 label
	var price = document.getElementById("price").textContent;		// 상품 가격 label
	var total = document.getElementById("total");								// 최종 결제 가격 label
		
	var nowPoint = "${member.point}";
	point.innerHTML = nowPoint;
	
	document.getElementById("usePoint").onchange = function(){

		if(parseInt(document.getElementById("usePoint").value) == 0 || document.getElementById("usePoint") == null){
			document.getElementById("usePoint").value = 0;
			document.getElementById("total").textContent = document.getElementById("price").textContent;
			document.getElementById("payment").value =  document.getElementById("price").textContent;
		}else{
			if(parseInt(document.getElementById("usePoint").value) > parseInt(document.getElementById("price").textContent)){
				var usePoint = document.getElementById("usePoint").value;	// 사용하고자하는 적립금 input
				alert("적립금을 상품가격보다 더 사용하셧습니다.");
				document.getElementById("usePoint").value = document.getElementById("price").textContent;
				document.getElementById("total").textContent = document.getElementById("price").textContent - document.getElementById("usePoint").value;
			}else if( Number(nowPoint) < Number(document.getElementById("usePoint").value)){
				var usePoint = document.getElementById("usePoint").value;	// 사용하고자하는 적립금 input
				alert("현재 보유하신 적립금보다 많습니다.");
				document.getElementById("usePoint").value = nowPoint;
				document.getElementById("total").textContent = document.getElementById("price").textContent - document.getElementById("usePoint").value;
			}else{
				var usePoint = document.getElementById("usePoint").value;	// 사용하고자하는 적립금 input
				document.getElementById("total").textContent = document.getElementById("price").textContent - document.getElementById("usePoint").value;
				document.getElementById("payment").value = document.getElementById("price").textContent - document.getElementById("usePoint").value;
			}			
		}
	}
	
	var cancelBtn = document.getElementById("cancel");
	cancelBtn.onclick = function(){
		history.back();
	}
	
	var payBtn = document.getElementById("pay");
	payBtn.onclick = function(){
		var totalPrice = document.getElementById("total").textContent;
		var point = parseInt(totalPrice) / 10;
		
		document.getElementById("lastTotalPrice").setAttribute("value",totalPrice);
		document.getElementById("lastTotalPoint").setAttribute("value",point);
		
		var json = '[';
		for (var i in nodeList) {
			if(nodeList[i].constructor == "function HTMLTableRowElement() { [native code] }"){
				var pictureTemp = nodeList[i].firstChild.nextSibling.firstChild.getAttribute("src");
				var picture = pictureTemp.substring(10, pictureTemp.length); 
				var productName = nodeList[i].firstChild.nextSibling.nextSibling.nextSibling.firstChild.nodeValue 
				var price = nodeList[i].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue;
				var count = nodeList[i].firstChild.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue;
			   	var productTotalPrice = parseInt(price) * parseInt(count);
			   	json += '{"name":"' +productName+ '","price":"'+ price +'","count":"'+count+'","picture":"'+picture+'","totalPrice":"'+ productTotalPrice+'"},';
			   	
			}
		}
		json = json.substring(0, json.length-1);
  	 	json += ']';
  	 	var lastPoint = parseInt(nowPoint) - parseInt(document.getElementById("usePoint").value) + point;
  	 	document.getElementById("lastTotalPoint").setAttribute("value", lastPoint);
		document.getElementById("json").setAttribute("value", json);
		if(check()){
			document.orderForm.submit();	
		}
	}
}

function check(){	
		if(document.orderForm.recipient.value==""){
			alert("받으실분을 입력 하세요");
			return false;
		}else if(document.orderForm.address.value==""){
			alert("기본주소를 입력 하세요");
			return false;
		}else if(document.orderForm.address2.value==""){
			alert("상세주소를 입력 하세요");
			return false;
		}else if(document.orderForm.phone.value==""){
			alert("전화번호 첫 번째 칸을 입력 하세요");
			return false;
		}else if(document.orderForm.phone2.value==""){
			alert("전화번호 두 번째 칸을 입력 하세요");
			return false;
		}else if(document.orderForm.phone3.value==""){
			alert("전화번호 세 번째 칸을 입력 하세요");
			return false;
		}
		return true
}
</script>

</head>
<body>

<p class="j_p">
				<font class="j_txt">O </font>R D E R</p>

<form action="../order/orderregist.bins" method="post" name="orderForm">
	<input type="hidden" name="cartCheck" value="${cartId}">
	<div class="container">
		<table class="table info">
			<colgroup>
				<col width="320"/>
				<col width="320"/>
				<col width="120"/>
				<col width="120"/>
				<col width="120"/>
			</colgroup>
			
			<tr class="active">
				<th>상품사진</th>
				<th>상품명</th>
				<th>판매가</th>
				<th>수량</th>
				<th>합계</th>
			</tr>
			<tbody id="tbody">
			<c:forEach begin="0" end="${allData.size()-1}" var="i">
				<tr>
					<td><img src='../images/${allData.get(i).get("picture")}' /></td>
					<td>${allData.get(i).get("name")}</td>
					<td>${allData.get(i).get("price")}</td>
					<td>${allData.get(i).get("count")}</td>
					<td>${allData.get(i).get("price") * allData.get(i).get("count")}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	<div class="container">
		<table class="table">
			<colgroup>
				<col width="250" />
				<col width="750" />
			</colgroup>
			
			<tr>
				<td><h4>01. 주문자 정보</h4></td>
				<td>
					<table>
						<tr>
							<td class="TagTd">주문하시는분</td>
							<td class="inputTd"><input type="text" class="form-control"  name="memberId" value="${member.name }"></td>
						</tr>
						<tr>
							<td class="TagTd">전화번호</td>
							<td class="inputTd">
								<input type="text" class="form-control phoneFile"  value="${member.phoneNumber }" style="display: inline;"> - 
								<input type="text" class="form-control phoneFile"  value="${member.phoneNumber2 }"> - 
								<input type="text" class="form-control phoneFile"  value="${member.phoneNumber3}">
							</td>
						</tr>
						<tr>
							<td class="TagTd">이메일</td>
							<td class="inputTd"><input type="text" class="form-control" value="${member.email }"></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td><h4>02. 배송 정보</h4></td>
				<td>
					<table>
						<tr>
							<td class="TagTd">배송지 확인</td>
							<td class="inputTd"><div class="checkbox" style="margin: 0px"><label><input type="checkbox" value=""  id="checkbox">주문고객 정보와 동일합니다.</label></div></td>
						</tr>
						<tr>
							<td class="TagTd">받으실분</td>
							<td class="inputTd"><input type="text" class="form-control" id="name" name="recipient" value=""></td>
						</tr>
						<tr>
							<td class="TagTd">받으실곳</td>
							<td class="inputTd"><input type="text" class="form-control" id="address" name="address"></td>
						</tr>
						<tr>
							<td class="TagTd"></td>
							<td class="inputTd"><input type="text" class="form-control" id="address2" name="address2"></td>
						</tr>
						<tr>
							<td class="TagTd">전화번호</td>
							<td class="inputTd">
								<input type="text" name="phone" class="form-control phoneFile"  id="phoneNum1" style="display: inline;"> - 
								<input type="text" name="phone2" class="form-control phoneFile" id="phoneNum2"> - 
								<input type="text" name="phone3" class="form-control phoneFile" id="phoneNum3">
							</td>
						</tr>
						<tr>
							<td class="TagTd">남기실 말씀</td>
							<td class="inputTd"><input type="text" class="form-control" name="orderComment"></td>
						</tr>
						<tr>
							<td class="TagTd">배송 선택</td>
							<td class="inputTd">
								<div class="radio">
		  							<label><input type="radio" name="optradio" checked="checked">기본 배송</label>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td><h4>03. 결제 금액</h4></td>
				<td>
					<table>
						<tr>
							<td class="TagTd">상품합계금액</td>
							<td class="inputTd"><label id="price">${param.price}</label>원</td>
						</tr>
						<tr>
							<td class="TagTd">사용가능 적립금</td>
							<td class="inputTd"><label id="point"></label>원</td>
						</tr>
						<tr>
							<td class="TagTd">사용할 적립금</td>
							<td class="inputTd"><input type="text" class="form-control" id="usePoint" name="userPoint"></td>
						</tr>
						<tr>
							<td class="TagTd">총 결제 금액</td>
							<td class="inputTd"><label id="total"></label>원<input type="hidden" name="payment" id="payment" value=""></td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr>
				<td><h4>04. 결제 방법</h4></td>
				<td>
					<table>
						<tr>
							<td  class="TagTd" style="line-height: 22px;">일반 결제 방법</td>
							<td>
								<label class="radio-inline"><input type="radio" name="payment2" value="무통장입금" checked>무통장입금</label>
								<label class="radio-inline"><input type="radio" name="payment2" value="신용카드">신용카드</label>
								<label class="radio-inline"><input type="radio" name="payment2" value="계좌이체">계좌이제</label>
								<label class="radio-inline"><input type="radio" name="payment2" value="가상계좌">가상계좌</label>
								<label class="radio-inline"><input type="radio" name="payment2" value="핸드폰">핸드폰</label>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div style="text-align: center">
			<input type="button" id="pay" class="btn btn-danger" value="결제하기" />
			<input type="button" id="cancel" class="btn btn-danger" value="취소하기" />
		</div>
	</div>
		<input type="hidden" id="lastTotalPrice" name="lastTotalPrice">
		<input type="hidden" id="lastTotalPoint" name="lastTotalPoint">
		<input type="hidden" id="json" name="json">
</form>
	
</body>
</html>
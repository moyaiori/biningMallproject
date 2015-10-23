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

<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">

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
	
	document.getElementById("checkbox").onchange = function(){
		if (this.checked == true) {
			setData();
		}else{
			clearData();
		}
	}
	
	document.getElementById("total").textContent = document.getElementById("price").textContent;
	document.getElementById("payment").value =  document.getElementById("price").textContent;
	if(document.getElementById("usePoint").value == 0 || document.getElementById("usePoint").value == 0 || document.getElementById("usePoint") == null){
		document.getElementById("usePoint").value = 0;
	}

	var usePoint = document.getElementById("usePoint").value;	// 사용하고자하는 적립금 input
	var point = document.getElementById("point");							// 적립금 label
	var price = document.getElementById("price").textContent;		// 상품 가격 label
	var total = document.getElementById("total");								// 최종 결제 가격 label
	var nowPoint = "${member.point }";
	
	point.innerHTML = nowPoint;
	
	document.getElementById("usePoint").onchange = function(){

		if(document.getElementById("usePoint").value == 0 || document.getElementById("usePoint") == null){
			document.getElementById("usePoint").value = 0;
		}else{
			if(document.getElementById("usePoint").value > document.getElementById("price").textContent){
				alert("적립금을 상품가격보다 더 사용하셧습니다.");
				document.getElementById("usePoint").value = document.getElementById("price").textContent;
				document.getElementById("total").textContent = document.getElementById("price").textContent - document.getElementById("usePoint").value;
			}else if(document.getElementById("usePoint").value > nowPoint){
				alert("현재 보유하신 적립금보다 많습니다.");
				document.getElementById("usePoint").value = price;
				document.getElementById("total").textContent = document.getElementById("price").textContent - document.getElementById("usePoint").value;
			}else{
				document.getElementById("total").textContent = document.getElementById("price").textContent - document.getElementById("usePoint").value;
				document.getElementById("payment").value = document.getElementById("price").textContent - document.getElementById("usePoint").value;
			}
		}
	}
}
		
	

</script>

</head>
<body>

<form action="../order/orderCheck.bins" method="post">
	<div class="container">
		<table class="table info">
			<colgroup>
				<col width="275" />
				<col width="275" />
				<col width="90" />
				<col width="90" />
				<col width="90" />
				<col width="90" />
				<col width="90" />
			</colgroup>
			
			<tr class="active">
				<th>상품사진</th>
				<th>상품명</th>
				<th>판매가</th>
				<th>수량</th>
				<th>배송비</th>
				<th>적립금</th>
				<th>합계</th>
			</tr>
			<tr>
				<td><img src='../images/치킨밥버거.JPG' /></td>
				<td>아주아주 맛있어요</td>
				<td>비닝이</td>
				<td>Good</td>
				<td>Good</td>
				<td>Good</td>
				<td>Good</td>
			</tr>
		</table>
		<input type="hidden" name="productname" value="임시 상품명">
		<input type="hidden" name="toppingname" value="임시 토핑명">
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
								<input type="text" class="form-control phoneFile"  id="phoneNum1" style="display: inline;"> - 
								<input type="text" class="form-control phoneFile" id="phoneNum2"> - 
								<input type="text" class="form-control phoneFile" id="phoneNum3">
							</td>
						</tr>
						<tr>
							<td class="TagTd">남기실 말씀</td>
							<td class="inputTd"><input type="text" class="form-control" name="comment"></td>
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
							<td class="inputTd"><label id="price">${param.price }</label>원</td>
							<td class="inputTd"><label id="price">${request.price }</label></td>
						</tr>
						<tr>
							<td class="TagTd">적립금</td>
							<td class="inputTd"><label id="point"></label>원</td>
						</tr>
						<tr>
							<td class="TagTd">사용할 적립금</td>
							<td class="inputTd"><input type="text" class="form-control" id="usePoint"></td>
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
								<label class="radio-inline"><input type="radio" name="optradio">무통장입금</label>
								<label class="radio-inline"><input type="radio" name="optradio">신용카드</label>
								<label class="radio-inline"><input type="radio" name="optradio">계좌이제</label>
								<label class="radio-inline"><input type="radio" name="optradio">가상계좌</label>
								<label class="radio-inline"><input type="radio" name="optradio">핸드폰</label>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div style="text-align: center">
			<input type="submit" class="btn btn-default" value="결제하기" />
			<input type="reset" class="btn btn-default" value="취소하기" />
		</div>
	</div>
</form>


	
</body>
</html>
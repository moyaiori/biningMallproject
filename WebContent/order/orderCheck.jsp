<%@ page contentType="text/html; charset=utf-8"%>
<!-- 
	작성일 : 2015/10/20
	작성자 : 가승호
	최종수정일 : 2015/10/20/ 17:15
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>주문확인 페이지</title>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">

<style type="text/css">

.table tr td{
	font-size: 18px;
}

</style>

</head>
<body>

<div class="container col-md-8 col-md-offset-2">
			<table class="table">
				<colgroup>
					<col width="300" />
					<col width="700" />
				</colgroup>
				<tr>
					<td colspan="2" style="text-align: center;"><h3>주문의 완료되었습니다. 주문내역을 확인해주세요</h3></td>
				</tr>
				<tr>
					<td>결제금액</td>
					<td>${orderList.totalPrice}원</td>
				</tr>
				<tr>
					<td>상품내역</td>
					<td>${productName}</td>
				</tr>
				<tr>
					<td>받으실분</td>
					<td>${orderList.recipient}</td>
				</tr>
				<tr>
					<td>배송될 주소</td>
					<td>${orderList.address} ${orderList.address2}</td>
				</tr>
				<tr>
					<td>남기신말</td>
					<td>${orderList.orderComment}</td>
				</tr>
			</table>
			<div style="text-align: center;">
				<input onclick="location.href='../index.bins'" type="button" class="btn btn-default" value="확인"/>
			</div>
		</div>
</body>
</html>
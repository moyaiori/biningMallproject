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
					<td>주문번호</td>
					<td>0001111</td>
				</tr>
				<tr>
					<td>결제금액</td>
					<td>100,000원</td>
				</tr>
				<tr>
					<td>상품내역</td>
					<td>빈스 밥버거</td>
				</tr>
				<tr>
					<td>배송정보</td>
					<td>너희집 우리집 여기저기</td>
				</tr>
				<tr>
					<td>기타사항</td>
					<td>둘이먹다 하나 죽어요</td>
				</tr>
			</table>
			<div style="text-align: center;">
				<input type="button" class="btn btn-default" value="확 인"/>
			</div>
		</div>
</body>
</html>
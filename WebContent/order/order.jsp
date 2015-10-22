<!-- 
	작성일 : 2015/10/20
	작성자 : 가승호
	최종수정일 : 2015/10/20/ 17:15
 -->
 <%@ page contentType="text/html; charset=utf-8"%>
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

</head>
<body>

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
						<td class="inputTd"><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<td class="TagTd">전화번호</td>
						<td class="inputTd">
							<input type="text" class="form-control phoneFile"  style="display: inline;"> - 
							<input type="text" class="form-control phoneFile"> - 
							<input type="text" class="form-control phoneFile">
						</td>
					</tr>
					<tr>
						<td class="TagTd">휴대전화번호</td>
						<td class="inputTd">
							<input type="text" class="form-control phoneFile"  style="display: inline;"> - 
							<input type="text" class="form-control phoneFile"> - 
							<input type="text" class="form-control phoneFile">
						</td>
					</tr>
					<tr>
						<td class="TagTd">이메일</td>
						<td class="inputTd"><input type="text" class="form-control"></td>
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
						<td class="inputTd"><div class="checkbox" style="margin: 0px"><label><input type="checkbox" value="">주문고객 정보와 동일합니다.</label></div></td>
					</tr>
					<tr>
						<td class="TagTd">받으실분</td>
						<td class="inputTd"><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<td class="TagTd">받으실곳</td>
						<td class="inputTd">
							<input type="text" class="form-control phoneFile"  style="display: inline;"> - 
							<input type="text" class="form-control phoneFile">
							<input type="button" class="btn btn-default" value="우편번호 찾기" />
						</td>
					</tr>
					<tr>
						<td class="TagTd"></td>
						<td class="inputTd"><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<td class="TagTd"></td>
						<td class="inputTd"><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<td class="TagTd">전화번호</td>
						<td class="inputTd">
							<input type="text" class="form-control phoneFile"  style="display: inline;"> - 
							<input type="text" class="form-control phoneFile"> - 
							<input type="text" class="form-control phoneFile">
						</td>
					</tr>
					<tr>
						<td class="TagTd">휴개전화번호</td>
						<td class="inputTd">
							<input type="text" class="form-control phoneFile"  style="display: inline;"> - 
							<input type="text" class="form-control phoneFile"> - 
							<input type="text" class="form-control phoneFile">
						</td>
					</tr>
					<tr>
						<td class="TagTd">남기실 말씀</td>
						<td class="inputTd"><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<td class="TagTd">배송 선택</td>
						<td class="inputTd">
							<div class="radio">
	  							<label><input type="radio" name="optradio">기본 배송</label>
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
						<td class="inputTd"><label>10000원</label></td>
					</tr>
					<tr>
						<td class="TagTd">적립금</td>
						<td class="inputTd"><label>10000원</label></td>
					</tr>
					<tr>
						<td class="TagTd">사용할 적립금</td>
						<td class="inputTd"><input type="text" class="form-control"></td>
					</tr>
					<tr>
						<td class="TagTd">총 결제 금액</td>
						<td class="inputTd"><label>10000원</label></td>
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
		<input type="button" class="btn btn-default" value="취소하기" />
	</div>
</div>
	
</body>
</html>
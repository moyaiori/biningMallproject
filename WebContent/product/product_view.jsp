<!-- 
	레이아웃 작성자 : 조현빈 
	레이아웃 수정최종 날짜 : 2015 -10 -20 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>

<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/product_view.css">


<body>
	<div>
		<div style="padding-top: 5px; padding-bottom: 10px;">
			<table class="detailMainDiv">
				<tr>
					<td><img src='../images/${product.picture}' /></td>
					<td valign="top">
						<div><h3>${product.name}</h3></div>
						<table class="innerTable">
							<tr>
								<td>가격</td>
								<td>: ${product.price}</td>
							</tr>
							<tr>
								<td>칼로리</td>
								<td>: ${product.calorie}cal</td>
							</tr>
							<tr>
								<td>판매량</td>
								<td>: ${product.salesCount}</td>
							</tr>
							<tr>
								<td>갯수</td>
								<td><input type="number" style="width: 50px" min="1" max="10" value="1"></td>
							</tr>
						</table>
						<div class="selectedTopping">
							<select multiple class="form-control" id="sel2">
						        <option>토핑을 추가해 주세요</option>
     						 </select>
						</div>
						<div class="selectTopping">
							<select class="form-control" id="sel2" style="display: inline;">
								<option value="">== 토핑 선택 ==
								<option value="30ml">30ml
								<option value="50ml">50ml (6,500원)
								<option value="100ml">100ml (10,000원)
								<option value="500ml">500ml (45,000원)
								<option value="1000ml">1000ml (80,000원)
     						 </select>
							<input type="button" class="btn btn-default" value="삭제" style="display: inline;"/>
						</div>

						<div class="orderBtnSet">
							<input type="button" class="btn btn-default" value="장바구니 추가"/>
							<input type="button" class="btn btn-default" value="바로 구매"/>
						</div>
					</td>
				</tr>
			</table>
		</div>

		<div></div>
	</div>

	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">메뉴 상세 설명</div>
			<div class="panel-body">${product.description }</div>
		</div>
	</div>

	<div class="reviewDiv">
		<div class="container">
			<table class="table">
				<colgroup>
					<col width="70" />
					<col width="660" />
					<col width="130" />
					<col width="130" />
				</colgroup>
				<tr class="active">
					<th>번호</th>
					<th>상품평</th>
					<th>작성자</th>
					<th>만족도</th>
				</tr>
				<tr>
					<td>1</td>
					<td>아주아주 맛있어요</td>
					<td>비닝이</td>
					<td>Good</td>
				</tr>
				<tr>
					<td>2</td>
					<td>둘이먹다 하나 죽어요</td>
					<td>가승호</td>
					<td>Very Good</td>
				</tr>
			</table>
			<input type="button" class="btn btn-default" value="글쓰기"
				style="float: right;" />
		</div>
	</div>
</body>


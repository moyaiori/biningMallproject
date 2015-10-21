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

<style>

.orderTable{
	width: 680px;
	height: 200px;
	border: 1px solid;
	margin: 5px auto;
}

.orderTable tr td{
	width: 50%;
	font-size: 20px;
}

.innerTable tr td{
	wid
}



img{
	width: 300px;
	padding: 10px;
}

.menuName{
	padding: 1em 0px;
	font-size: 25px;
}

.selectTopping{
	text-align: center;
	padding: 10px 0px;
}

.selectTopping select{
	width: 80%;
}

.orderBtnSet{
	text-align: center;
}



</style>

<body>
	<div>
		<div>
			<table class="orderTable">
				<tr>
					<td><img src='../images/완_스페셜2밥버거.jpg'/></td>
					<td valign="top">
						<div class="menuName">메뉴이름</div>
						<table class="innerTable">
							<tr>
								<td>가격</td>
								<td> : 1000원</td>
							</tr>
							<tr>
								<td>칼로리</td>
								<td> : 1000cal</td>
							</tr>
							<tr>
								<td>판매량</td>
								<td> : 100개</td>
							</tr>
							<tr>
								<td>갯수</td>
								<td> : 100개</td>
							</tr>
						</table>
						<div class="selectTopping">
							<select>
								<option value="">== 옵션선택 ==
								<option value="30ml">30ml
								<option value="50ml">50ml (6,500원)
								<option value="100ml">100ml (10,000원)
								<option value="500ml">500ml (45,000원)
								<option value="1000ml">1000ml (80,000원)
							</select>
						</div>
						
						<div class="orderBtnSet">
							<input type="button" value="장바구니 추가">
							<input type="button" value="바로 구매">
						</div>
					</td>
				</tr>
			</table>
		</div>
		
		<div>
		</div>
	</div>
	
	
	
	
	<table class="orderTable">
		<tr>
			<td valign=top width=0 nowrap></td>
			<td valign=top width=100% height=100% bgcolor="" background="" class=outline_side>
				<!-- 상품 이미지 -->
				<div style="margin: 0px auto 0px auto">
					<div style="width: 45%; float: left; text-align: right;">
						<div style="padding-bottom: 10; float: right;">
							<span
								onclick="popup('goods_popup_large.php?goodsno=112',800,600)" style="cursor: pointer">
								<!--디테일뷰수정--> 
								<img src='../images/완_스페셜2밥버거.JPG'	width=300 id=objImg onerror=this.src= '' />
								<!--디테일뷰수정요기에 이미지 들어감-->
							</span>
						</div>
					</div>
				</div>
				
				<!-- 상품 스펙 리스트 -->
				<div id=goods_spec
					style="width: 390px; float: left; margin-left: 70px;">
					<!--디테일뷰수정-->
					<!--디테일뷰수정-->
					<form name=frmView method=post onsubmit="return false">
						<input type=hidden name=mode value="addItem"> <input
							type=hidden name=goodsno value="112"> <input type=hidden
							name=goodsCoupon value="0">
						<div style="padding: 10px 0 10px 5px" align=left>
							<b style="font: bold 12pt 돋움;"> VS TYPE 러브스펠 </b>
						</div>
						<div
							style="padding: 0 0 10px 5px; font: 11px dotum; letter-spacing: -1px; color: #666666"></div>
						<table border=0 cellpadding=0 cellspacing=0 class=top
							style="width: 390px;">
							<!-- 해당 tr 부분은 디비에 따라 수정!   -->
							<tr>
								<td height=15></td>
							</tr>

							<tr>
								<th>판매가격</th>
								<td><b><span id=price style="font-size: 18px;">4,000</span>원</b>
								</td>
							</tr>
							<tr>
								<th>적립금</th>
								<td><span id=reserve>40</span>원</td>
							</tr>
						</table>
						<table border=0 cellpadding=0 cellspacing=0 class="top02">
							<tr height>
								<th>상품상태</th>
								<td>신상품</td>
							</tr>
							<input type=hidden name=ea step="1" min="1" max="0" value=1>

							<tr>
								<th>고객선호도</th>
								<td>★★★★★</td>
							</tr>
						</table>

						<!-- 필수 옵션 일체형 -->
						<table border=0 cellpadding=0 cellspacing=0 class="top02">
							<tr>
								<th valign="top">토핑 추가</th>
								<td>
									<div>
										<select>
											<option value="">== 옵션선택 ==
											<option value="30ml">30ml
											<option value="50ml">50ml (6,500원)
											<option value="100ml">100ml (10,000원)
											<option value="500ml">500ml (45,000원)
											<option value="1000ml">1000ml (80,000원)
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td height=6></td>
							</tr>
						</table>

						<!-- 필수 옵션 분리형 -->

						<div id="" class="">
							<div
								style="font-size: 12px; text-align: right; padding: 10px 20px 10px 0; border-bottom: 1px solid #D3D3D3; margin-bottom: 5px;">
								<img src="" align="absmiddle"> 총 금액 : <span
									style="color: #E70103; font-weight: bold;" id=""></span>
							</div>
						</div>
						<!-- / -->

						<!-- 각종 버튼 -->
						<div
							style="width: 390px; border-top: 2px solid #e3e3e3; padding: 15px 0 0 0; margin: 15px 0 0 0;">
							<input type="button" value="바로구매하기"> <input type="button"
								value="장바구니 담기">

						</div>
					</form>


				</div>
				<p style="clear: both;">상세 설명 에 대한 데이터 가져와서 뿌려주는 부분 디자인시 센터로
					잡아주기</p> 후기
				<table>

					<tr>
						<th>번호</th>
						<th>상품평</th>
						<th>작성자</th>
						<th>만족도</th>
					</tr>
					<tr>
						<td>52</td>
						<td>상품평 보여지는 란</td>
						<td>작성자 보여지는 란</td>
						<td>만족도 보여지는 란</td>
					</tr>
					<tr>
						<td>52</td>
						<td>상품평 보여지는 란</td>
						<td>작성자 보여지는 란</td>
						<td>만족도 보여지는 란</td>
					</tr>
					<tr>
						<td>52</td>
						<td>상품평 보여지는 란</td>
						<td>작성자 보여지는 란</td>
						<td>만족도 보여지는 란</td>
					</tr>
				</table>
</body>


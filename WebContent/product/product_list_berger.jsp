<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
	레이아웃 작성자 : 조현빈 
	레이아웃 수정최종 날짜 : 2015 -10 -20 : 8시 30분
 -->	
<!--
	img태그  onerror=this.src='' 이부분에 이미지를 넣음. 
	해당 이미지가 gif파일이면 쇼핑몰 이미지 처럼 반짝반짝 움직임.
 -->
 
<style>
img{
	width: 200px;
}

</style>
 
<div>
	<table width=70% cellpadding="0" cellspacing="0" style="margin-left: 200">
	<!--첫 번째 줄 -->
	<tr><td  class ="" colspan="3" align="center" bordercolor="red" ></td></tr>
		<tr>
		<c:forEach begin="0" end="2" var="i">
				<td align=center valign=top width="25%" style="padding-bottom:25px;">
						<div style="text-align:center;"><a href="../product/product_view.bins?productId=${productList.get(i).productId}"><img class="imageborder" src="../images/${productList.get(i).picture}" width=200 class=""  /></a></div>
						<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
						<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">${productList.get(i).name}</a></div>
						<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">${productList.get(i).price}원</a> </div>
						<div></div>	</div>
				</td>
		</c:forEach>
		</tr>
		
		<tr>
		<c:forEach begin="3" end="5" var="i">
				<td align=center valign=top width="25%" style="padding-bottom:25px;">
						<div style="text-align:center;"><a href="../product/product_view.bins?productId=${productList.get(i).productId}"><img class="imageborder"  src="../images/${productList.get(i).picture}" width=200  class=""  /></a></div>
						<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
						<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">${productList.get(i).name}</a></div>
						<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">${productList.get(i).price}원</a> </div>
						<div></div>	</div>
				</td>
		</c:forEach>
		</tr>
		
		<tr>
		<c:forEach begin="6" end="8" var="i">
				<td align=center valign=top width="25%" style="padding-bottom:25px;">
						<div style="text-align:center;"><a href="../product/product_view.bins?productId=${productList.get(i).productId}"><img class="imageborder"  src="../images/${productList.get(i).picture}" width=200  class="" /></a></div>
						<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
						<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">${productList.get(i).name}</a></div>
						<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">${productList.get(i).price}원</a> </div>
						<div></div>	</div>
				</td>
		</c:forEach>
		</tr>
		
		<tr>
		<c:forEach begin="9" end="11" var="i">
				<td align=center valign=top width="25%" style="padding-bottom:25px;">
						<div style="text-align:center;"><a href="../product/product_view.bins?productId=${productList.get(i).productId}"><img class="imageborder"  src="../images/${productList.get(i).picture}" width=200  class="" /></a></div>
						<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
						<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">${productList.get(i).name}</a></div>
						<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">${productList.get(i).price}원</a> </div>
						<div></div>	</div>
				</td>
		</c:forEach>
		</tr>
	</table>
</div>
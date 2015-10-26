<!-- 
	레이아웃 작성자 : 조현빈 
	레이아웃 수정최종 날짜 : 2015 -10 -20 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../style/product_view.css">
<script src="../js/ajax2.js"></script>

<style>
#picture:HOVER{
   -webkit-transform: scale(1.5);
   position: relative;
   top:5px;
   z-index: 5;
}
</style>

<script>
	window.onload = function(){
		var toppingPrice = 0;
		var toppingName = "";
		var count = document.getElementById("count");
		var price = document.getElementById("price");
		var realPrice = ${product.price};
		var select = document.getElementById("select");
		var toppingBox = document.getElementById("topping");
		var deleteButton = document.getElementById("delete");
		var array = [];
		
		var picture = document.getElementById("picture");
		var pictureName = picture.getAttribute("src");
		pictureName = pictureName.substring(10, pictureName.length);
		
		deleteButton.onclick = function(){
			toppingPrice -= parseInt(toppingBox.options[toppingBox.selectedIndex].text.split(":")[1].split("원")[0].trim());
			price.innerHTML = (realPrice + toppingPrice) * count.value;
			if(dupleCheck2(toppingBox.options[toppingBox.selectedIndex].text.split(":")[0])){
				array.splice(toppingBox.selectedIndex, 1);
			}
						
			function dupleCheck2(nameCheck){
				for (var i in array){
					console.log(array[i].name +":"+ nameCheck);
					if(array[i].name.trim() == nameCheck.trim()){
						array[i].count = array[i].count - 1;
						if(array[i].count == 0){
							array.splice(toppingBox.selectedIndex, 1);
						}
						return false;
					}
					return true;
				}
			}

			var output= "";
			for (var i in array) {
				output += "<option>" + array[i].name + " : " + array[i].price + " - " + array[i].count +"개</option>";
			}
			toppingBox.innerHTML = output;
		}
		
		select.onchange = function(){
			var temp = (realPrice + parseInt(this.value)) * count.value;
			price.innerHTML = temp;
			var str = select.options[select.selectedIndex].text;
				
			if(array.length != 0){
				if(dupleCheck(str.substring(3).trim().split(":")[0].trim())){
					array.push({name:str.substring(3).trim().split(":")[0].trim(), price:str.substring(3).trim().split(":")[1].trim(), count:1});
					toppingPrice += parseInt(str.substring(3).trim().split(":")[1].trim().split("원")[0]) * 1;
				}
			}else{
				array.push({name:str.substring(3).trim().split(":")[0].trim(), price:str.substring(3).trim().split(":")[1].trim(), count:1});
				toppingPrice += parseInt(str.substring(3).trim().split(":")[1].trim().split("원")[0]) * 1;
			}
			
			function dupleCheck(nameCheck){
				for ( var i in array) {
					if(array[i].name == nameCheck){
						toppingPrice += parseInt(array[i].price.split("원")[0]) * parseInt(array[i].count);
						array[i].count = array[i].count + 1;
						return false;
					}
				}
				return true;
			}
			
			var output= "";
			for (var i in array) {
				output += "<option>" + array[i].name + " : " + array[i].price + " - " + array[i].count +"개</option>";
			}
			
			select.selectedIndex = 0;
			toppingBox.innerHTML = output;
			price.innerHTML = (realPrice + toppingPrice) * count.value;
		}
		
		
		count.onchange = function(){
			price.innerHTML = (realPrice + toppingPrice) * count.value;
		}
		
		var form = document.getElementById("submit");
	    form.onsubmit = function(){
	    	if("${cookie.loginId}" != ""){
	    	   var json = '[';
	 	       var priceE = document.getElementById("price");
	 	       var price = priceE.firstChild.nodeValue;
	 	       for ( var i in array) {
	 				toppingName += (array[i].name + " ");
	 			}
	 	       var productName = "${product.name}";
	 	       if(toppingName.trim().length == 0){
	 	    	   toppingName = "없음";
	 	       }
	 	       json += '{"name":"' + productName +"(토핑 : " + toppingName + ")" + '","price":"'+ parseInt(price)/parseInt(count.value) +'","count":"'+count.value+'","picture":"'+pictureName+'"},';
	 	       json = json.substring(0, json.length-1);
	 	       json += ']'
	 	       
	 	       alert(json);
	 	       var data = document.getElementById("hidden");
	 	       data.setAttribute("value", json);
	    	}else{
	    		alert("로그인 후 이용이 가능합니다.");
	    		$(function(){
	    	        $('#myModal').modal({ keyboard: false })
	    		});
	    		return false;
	    	}
	    }
	    
	    var addCart = document.getElementById("addCart");
	    addCart.onclick = function(){
	    	if("${cookie.loginId}" != ""){
	    		for ( var i in array) {
					toppingName += (array[i].name + " ");
				}
		    	alert("상품이 추가 되었습니다");
		    	if(toppingName.trim().length == 0){
		    		toppingName = "없음";
		    	}
		    	
		    	var returnValue = confirm("장바구니하면으로 이동하시겠습니까?");
		    	if (returnValue) {
		    		window.location.href = "../cart/cartInsert.bins?loginId=" + "${cookie.loginId.value}" + "&productId=" + "${product.productId}" + "&price=" + realPrice + "&name=" + "${product.name}" + "&picture=" + "${product.picture}" + "&count=" + count.value + "&toppingPrice=" + toppingPrice + "&toppingName=" + toppingName+ "&result=true"  ;
		    	} else {
		    		window.location.href = "../cart/cartInsert.bins?loginId=" + "${cookie.loginId.value}" + "&productId=" + "${product.productId}" + "&price=" + realPrice + "&name=" + "${product.name}" + "&picture=" + "${product.picture}" + "&count=" + count.value + "&toppingPrice=" + toppingPrice + "&toppingName=" + toppingName+ "&result=false" ;
				}
	    	
	    	}else{
	    		alert("로그인 후 이용이 가능합니다.");
	    		$(function(){
	    	        $('#myModal').modal({ keyboard: false })
	    		});
	    	}
	    }
	    
	    var productView = document.getElementById("productView");
	    productView.onclick = function(){
	    	if(productView.firstChild.nodeValue == "상품평 보기"){
	    		productView.firstChild.nodeValue = "상품평 숨기기";
	    		var comment = document.getElementsByClassName("comment");
	    		for ( var i in comment) {
	    			if(comment[i].constructor == "function HTMLTableRowElement() { [native code] }"){
	    				comment[i].style.display = "";
	    			}
				}
	    		document.getElementById("write").style.display = "";
			}else{
				productView.firstChild.nodeValue = "상품평 보기";
				var comment = document.getElementsByClassName("comment");
				for ( var i in comment) {
					if(comment[i].constructor == "function HTMLTableRowElement() { [native code] }"){
						comment[i].style.display = "none";
	    			}
				}
				document.getElementById("write").style.display = "none";
			}
	    }
	}
</script>
	<form action="../order/order.bins" id="submit" method="">
	    <input type="hidden" id="hidden" name="json">
		<div>
			<div style="padding-top: 5px; padding-bottom: 10px;">
				<table class="detailMainDiv">
					<tr>
						<td><img src='../images/${product.picture}' id="picture"/></td>
						<td valign="top">
							<div><h3>${product.name}</h3></div>
							<table class="innerTable">
								<tr>
									<td>가격 : </td>
									<td id="price">${product.price} 원</td>
								</tr>
								<tr>
									<td>칼로리 : </td>
									<td>${product.calorie} kcal</td>
								</tr>
								<tr>
									<td>판매량 : </td>
									<td>${product.salesCount}</td>
								</tr>
								<tr>
									<td>갯수 : </td>
									<td><input id="count" type="number" style="width: 50px" min="1" max="50" value="1"></td>
								</tr>
							</table>
							<div class="selectedTopping">
								<select multiple class="form-control" id="topping">
							        <option>토핑을 추가해 주세요</option>
	     						 </select>
							</div>
							<div class="selectTopping" style="text-align: left;">
								<select class="form-control" id="select" style="display: inline; width:210px">
									<option value="">== 토핑 선택 ==
									<c:forEach items="${toppingList}" var="topping">
									<option  value="${topping.price}">${topping.toppingId}. ${topping.name} : ${topping.price}원
									</c:forEach>
	     						 </select>
								<input type="button" id="delete" class="btn btn-danger" value="삭제" style="display: inline;"/>
							</div>
	
							<div class="orderBtnSet" style="width: 208px">
								<input id="addCart" type="button" class="btn btn-danger" value="장바구니 추가"/>
								<input id="buyButton" type="submit" class="btn btn-danger" value="바로 구매"/>
							</div>
						</td>
					</tr>
				</table>
			</div>
	
			<div></div>
		</div>
	</form>
	
	<div class="container" style="width: 70%; font-family: HY강M">
		<div class="panel panel-danger" style="margin-top: 25px">
			<div class="panel-heading">메뉴 상세 설명</div>
			<div class="panel-body">${product.description}</div>
		</div>
	</div>
	
	<div class="container" style="width: 70%; font-family: HY강">
		<a id="productView" style="cursor:pointer; margin-bottom: 5px" class="btn btn-danger" >상품평 보기</a>
	</div>
	
	<div class="reviewDiv">
		<div class="container" style="width: 70%; font-family: hy강M">
			<table class="table">
				<colgroup>
					<col width="70" />
					<col width="660" />
					<col width="130" />
					<col width="130" />
				</colgroup>
				<tr class="danger" style="font-family: hy강M">
					<th>번호</th>
					<th>상품평</th>
					<th>작성자</th>
					<th>만족도</th>
				</tr>
				<c:if test="${commentList.size()-1 >= 0}">
					<c:forEach begin="0" end="${commentList.size()-1}" var="i">
						<tr class="comment" style="display:none;">
							<td>${commentList.size()-i}</td>
							<td>${commentList.get(i).content}</td>
							<td>${commentList.get(i).memberId}</td>
							<td>${commentList.get(i).satisfaction}</td>
						</tr>
					</c:forEach>
				</c:if>
				<c:if test="${commentList.size()-1 < 0}">
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</c:if>
			</table>
			<c:choose>
				<c:when test="${cookie.loginId != null}"><input id="write" onclick="location.href='../product/product_write.bins?productId=${product.productId}'" type="button" class="btn btn-danger" value="글쓰기" style="float: right;" /></c:when>
			</c:choose>
			
		</div>
	</div>


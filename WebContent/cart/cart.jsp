<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="../js/ajax.js"></script>
<script>
   window.onload = function(){
      var price = 0;
      var totalPrice = document.getElementById("totalPrice");
      var point = document.getElementById("point");
      var checkBox = document.getElementsByName("check");
      var orderCount = document.getElementsByName("count");
      var cartId = document.getElementsByClassName("cartId");
      
      var viewPrice;
      var count;
      var productPrice2;
      var temp;
      
      
      for (var i in checkBox){         
         checkBox[i].onchange = function(){
            if(this.checked == true){
               price += parseInt(sumPrice(this));
               totalPrice.innerHTML = price;
               point.innerHTML = price/10;
               for ( var i in orderCount) {
                  if(orderCount[i].constructor == "function HTMLInputElement() { [native code] }"){
                     orderCount[i].onchange = function(){
                        var total=0;
                        viewPrice = this.parentNode.nextSibling.nextSibling;
                        count = parseInt(this.value);
                        productPrice2 = this.parentNode.previousSibling.previousSibling.firstChild.nodeValue.trim();
                        temp = parseInt(count) * parseInt(productPrice2);
                        viewPrice.innerHTML = parseInt(count) * parseInt(productPrice2);
                        price = temp;
                        
                        for(var j=0; j<orderCount.length; j++){
                           if(orderCount[j].parentNode.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.firstChild.checked){
                        	  total = checkSelect(checkBox);
                              //total += parseInt(orderCount[j].parentNode.nextSibling.nextSibling.firstChild.nodeValue.trim());
                           }
                        }
                        
                        totalPrice.innerHTML = total;
                        point.innerHTML = total/10;
                     }
                  }
               }
            }else{
               price = checkSelect(checkBox);
               totalPrice.innerHTML = price;
               point.innerHTML = price/10;
            }
         }   
      }
      
      for ( var i in orderCount) {
         if(orderCount[i].constructor == "function HTMLInputElement() { [native code] }"){
            orderCount[i].onchange = function(){
               var viewPrice = this.parentNode.nextSibling.nextSibling;
               var count = parseInt(this.value);
               var productPrice2 = this.parentNode.previousSibling.previousSibling.firstChild.nodeValue.trim();
               var total = this.parentNode.nextSibling.nextSibling.firstChild.nodeValue.trim();
               viewPrice.innerHTML = parseInt(count) * parseInt(productPrice2);
            }
         }
      }
      
      allDeleteBtn = document.getElementById("allDelete");
      allDeleteBtn.onclick = function(){
         window.location.href = "/cart/cartAlldelete.bins?loginId=" + "${cookie.loginId.value}"
      }
      
      selDeleteBtn = document.getElementById("selDelete");
      selDeleteBtn.onclick = function(){
    	  var json = '[';
    	  var cartOutput = "";
    	  for (var i in checkBox){
    		  if(checkBox[i].checked){
    			  cartOutput += checkBox[i].parentNode.previousSibling.previousSibling.firstChild.nodeValue + ",";
    		  }
    	  }
    	  window.location.href = "/cart/cartSeldelete.bins?loginId=" + "${cookie.loginId.value}" + "&cartId=" + cartOutput;
      }
      
      allOrderBtn = document.getElementById("allOrder");
      allOrderBtn.onclick = function(){
    	  var json = '[';
    	  var tbody = document.getElementById("tbody");
    	  var nodeList = tbody.childNodes;
    	  for ( var i in nodeList) {
    		  if(nodeList[i].constructor == "function HTMLTableRowElement() { [native code] }"){
    			  var name = nodeList[i].childNodes[3].nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue.trim();
    			  var price = nodeList[i].childNodes[3].nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue.trim();
    			  var count = nodeList[i].childNodes[3].nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.value;
    			  var picture = nodeList[i].childNodes[3].nextSibling.nextSibling.firstChild.getAttribute("src");
    			  picture = picture.substring(10, picture.length);
    			  json += '{"name":"' +name+ '","price":"'+ price +'","count":"'+count+'","picture":"'+picture+'"},';    		  
    			  }
		  }
    	  json = json.substring(0, json.length-1);
    	  json += ']';
    	  
    	  
    	  var cartOutput = "";
    	  for (var i in checkBox){
    		  if(checkBox[i].constructor == "function HTMLInputElement() { [native code] }"){
       		  	cartOutput += checkBox[i].parentNode.previousSibling.previousSibling.firstChild.nodeValue + ",";
    		  }
       	  }
    	  document.getElementById("cartCheck").setAttribute("value", cartOutput);
    	  
    	  var data = document.getElementById("hidden");
	      data.setAttribute("value", json);
	      if(json == "]"){
	    	  alert("주문 상품이 존재하지 않습니다.");
	    	  return false;
	      }else{
	    	  document.cartForm.submit();  
	      }
      }
      
      selOrderBtn = document.getElementById("selOrder");
      selOrderBtn.onclick = function(){
    	  var json = '[';
    	  var tbody = document.getElementById("tbody");
    	  var nodeList = tbody.childNodes;
    	  for ( var i in nodeList) {
    		  if(nodeList[i].constructor == "function HTMLTableRowElement() { [native code] }"){
    			  if(nodeList[i].childNodes[3].firstChild.checked){
	    			  var name = nodeList[i].childNodes[3].nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue.trim();
	    			  var price = nodeList[i].childNodes[3].nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue.trim();
	    			  var count = nodeList[i].childNodes[3].nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.value;
	    			  var picture = nodeList[i].childNodes[3].nextSibling.nextSibling.firstChild.getAttribute("src");
	    			  picture = picture.substring(10, picture.length);
	    			  json += '{"name":"' +name+ '","price":"'+ price +'","count":"'+count+'","picture":"'+picture+'"},';
    			  }
    		  }
		  }
    	  json = json.substring(0, json.length-1);
    	  json += ']' 
    	  
          var cartOutput = "";
    	  var checkNum = 0;
   		  for (var i in checkBox){
       		  if(checkBox[i].checked){
       			  checkNum += 1;
       			  cartOutput += checkBox[i].parentNode.previousSibling.previousSibling.firstChild.nodeValue + ",";
       		  }
       	  }
    	  document.getElementById("cartCheck").setAttribute("value", cartOutput);
    	  
          var data = document.getElementById("hidden");
	      data.setAttribute("value", json);
	      
	      if(checkNum == 0){
	    	  alert("하나 이상 선택하셔야 주문이 가능합니다.");
	    	  return false;
	      }
    	  document.cartForm.submit();
      }
   }
   
   function checkSelect(standard){
	   var total = 0;
	   for (var i in standard){
		   if(typeof standard[i] == "object"){
			   if(standard[i].checked){
				   total += parseInt(standard[i].parentNode.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue.trim());
			   }
		   }
	   }
      return total;
   }
   
   function sumPrice(standard){
      var price = standard.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue;
      return price.trim();
   }
   
   function subPrice(standard){
      price = standard.parentNode.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.firstChild.nodeValue;
      return price.trim();
   }
   
   
   
</script>
<!-- 
   작성일 : 2015/10/20
   작성자 : 가승호
   최종수정일 : 2015/10/20/ 19:20
 -->
 
<div class="container">
<form name="cartForm" action="../order/order.bins" method="post">
<input type="hidden" name="json" id="hidden">
<input type="hidden" name="cartCheck" id="cartCheck">

<p class="j_p">
				<font class="j_txt">C </font>A R T</p>
<div class="text-center">
<table class="table" style="font-family: hy강m; font-size: 15pt ">
   <thead> 
   <tr class="active">
      <th>선택</th>
      <th>사진</th>
      <th>상품명</th>
      <th>개당 가격</th>
      <th>수량</th>
      <th>총 가격</th>
   </thead>
   <tbody id="tbody">
      <c:forEach items="${cartList}" var="cart">
         <tr>
            <td style="display:none;" class="cartId">${cart.cartId}</td>
            <td style="vertical-align: inherit;"><input type="checkbox" name="check"><span>선택</span></td>
            <td><img src='../images/${cart.picture}' width="100px" height="100px"/></td>
            <td style="vertical-align: inherit;"> ${cart.name}(토핑 : ${cart.toppingName}) </td>
            <td style="vertical-align: inherit;"> ${(cart.price + cart.toppingPrice)} </td>            
            <td style="vertical-align: inherit;"><input type="number" value="${cart.orderCount}" min="1" max="50" name="count"></td>
            <td style="vertical-align: inherit;" class="productPrice"> ${(cart.price + cart.toppingPrice) * cart.orderCount}</td>
         </tr>
      </c:forEach>
   </tbody>
   <tfoot>
   <tr>
      <td colspan="10">
      <table style="display:block;float:right;">
         <tbody><tr>
            <td align="right">상품합계금액</td>
            <td align="right" style="font-weight:bold; padding-left:30px"><span id="totalPrice">0</span>원　</td>         
            <td align="right">받으실적립금</td>
            <td align="right" style="font-weight:bold;padding-left:25px"><span id="point">0</span>원　</td>
            <td align="right">　　<input type="button" id="selDelete"  class="btn btn-danger" value="선택삭제"></td>
            <td align="right">　　<input type="button" id="allDelete" class="btn btn-danger" value="전체삭제"></td>
         </tr>
         </tbody>
      </table>
      </td>
   </tr>
   </tfoot>
</table>
<br>
<input type="button" value="선택주문" id="selOrder" class="btn btn-danger btn-lg">

<input type="button" value="전체주문" id="allOrder" class="btn btn-danger btn-lg">
</div>
</form>
</div>
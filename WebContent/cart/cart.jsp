<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<script>
   window.onload = function(){
      var price = 0;
      var totalPrice = document.getElementById("totalPrice");
      var point = document.getElementById("point");
      var checkBox = document.getElementsByName("check");
      var orderCount = document.getElementsByName("count");
      var cartId = document.getElementsByClassName("cartId");
      var cartOutput = "";
      
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
                        //console.log("temp:"+temp);
                        viewPrice.innerHTML = parseInt(count) * parseInt(productPrice2);
                        price = temp;
                        
                        for(var j=0; j<orderCount.length; j++){
                           //console.log(parseInt(orderCount[j].parentNode.nextSibling.nextSibling.firstChild.nodeValue.trim()))   ;
                           if(orderCount[j].parentNode.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.previousSibling.firstChild.checked){
                              total += parseInt(orderCount[j].parentNode.nextSibling.nextSibling.firstChild.nodeValue.trim());   
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
    	  for (var i in checkBox){  
    		  if(checkBox[i].checked){
    			  cartOutput += checkBox[i].parentNode.previousSibling.previousSibling.firstChild.nodeValue + ",";
    		  }
    	  }
    	  window.location.href = "/cart/cartSeldelete.bins?loginId=" + "${cookie.loginId.value}" + "&cartId=" + cartOutput;
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
<h2 align="center">장바구니</h2>
<div class="text-center">
<table class="table">
   <thead> 
   <tr class="active">
      <th>선택</th>
      <th>사진</th>
      <th>상품명</th>
      <th>개당 가격</th>
      <th>수량</th>
      <th>총 가격</th>
   </thead>
   <tbody>
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
            <td align="right" style="font-weight:bold; padding-left:30px"><span id="totalPrice">0</span>원&nbsp;</td>         
            <td align="right">받으실적립금</td>
            <td align="right" style="font-weight:bold;padding-left:25px"><span id="point">0</span>원&nbsp;</td>
            <td align="right">&nbsp;&nbsp;&nbsp;<input type="button" id="selDelete" value="선택삭제"></td>
            <td align="right">&nbsp;&nbsp;&nbsp;<input type="button" id="allDelete" value="전체삭제"></td>
         </tr>
         </tbody>
      </table>
      </td>
   </tr>
   </tfoot>
</table>
<br>
<input type="button" value="선택주문">
<input type="button" value="전체주문">
</div>

</div>
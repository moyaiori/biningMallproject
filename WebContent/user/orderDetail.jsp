<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<p class="j_p">
				<font class="j_txt">O </font> R D E R</p>

<table class="table">
   <thead> 
   <tr class="danger">
      <th>사진</th>
      <th>상품명</th>
      <th>개당 가격</th>
      <th>수량</th>
      <th>총 가격</th>
   </thead>
   <tbody id="tbody">
      <c:forEach items="${list}" var="order">
         <tr>
            <td><img src='../images/${order.productPicture}' width="100px" height="100px"/></td>
            <td style="vertical-align: inherit;"> ${order.productName } </td>
            <td style="vertical-align: inherit;"> ${order.price } </td>            
            <td style="vertical-align: inherit;"> ${order.orderCount }</td>
            <td style="vertical-align: inherit;"> ${order.totalPrice }</td>
         </tr>
      </c:forEach>
   </tbody>
</table>
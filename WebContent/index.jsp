<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<style>
a.disabled {
   pointer-events: none;
   cursor: default;
}
</style>


	<div class="news_div" style="float: left; width: 30%; margin-left: 230px">
		<table class="n_h_table" style="font-family:hy강m; font-size: 12pt; font-weight: bold;" >
			<tr>
				<td>
					최근 공지사항
				</td>
				<td align="right" class="all">
					<a href="../notice/notice_list.bins">+ ALL</a>
				</td>
			</tr>
		</table>
		
		<ul class="n_ul">
		<c:if test="${noticeList.size() -1 >= 0}">
		
        <c:forEach  begin="0" end="${noticeList.size()-1}" var="i">
       		<li>
	            <a href="../notice/notice_read.bins?articleId=${noticeList.get(i).articleId}">
	           		    <span class="news_title">
							${noticeList.get(i).subject}
						</span>
						
						<span class="news_date">
							${noticeList.get(i).regdate}
						</span>
	  			</a>
  			</li>
   		</c:forEach>
   		</c:if>
		</ul>	
	</div>
		
		<div class="news_div" style="float: left; width: 30%; margin-left: 50px">
		<table class="n_h_table" style="font-family:hy강m;font-size: 12pt; font-weight: bold;">
			<tr>
				<td>
					최근 문의 사항
				</td>
				<td align="right" class="all">
					<a href="../qna/qna_view.bins">+ ALL</a>
				</td>
			</tr>
		</table>			
		<ul class="n_ul">		
			<c:if test="${qnaList.size() -1 >= 0}">
	 		<c:forEach  begin="0" end="${qnaList.size()-1}" var="i">
       			<li>
	            	<a href="../qna/qna_read.bins?articleId=${qnaList.get(i).articleId}" class="disabled">
	           			    <span class="news_title">
								${qnaList.get(i).subject}
							</span>
							<span class="news_date">
								${qnaList.get(i).regdate}
							</span>
	  				</a>
  				</li>
   			</c:forEach>
   			</c:if> 
		</ul>					 

	</div>


	
	<table width=70% cellpadding="0" cellspacing="0" style="margin-left: 200">
	<tr>
		<c:forEach items="${best}" var="product">
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
		<img alt="best" src="../images/best.jpg" style="margin-right: 150px">
					<div style="text-align:center;"><a href="../product/product_view.bins?productId=${product.productId}"><img class="imageborder" src='../images/${product.picture}' width=200 /></a></div>
					<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
					<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">${product.name}</a></div>		
					<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">${product.price}원</a></div>
					<div></div>	</div>
		</td>
		
		</c:forEach>
	<tr>
		<c:forEach items="${expensive}" var="product">
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
		<img alt="expensive" src="../images/고급져유.jpg" style="margin-right: 150px">
					<div style="text-align:center;"><a href="../product/product_view.bins?productId=${product.productId}"><img class="imageborder" src='../images/${product.picture}' width=200 /></a></div>
					<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
					<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">${product.name}</a></div>		
					<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">${product.price}원</a></div>
					<div></div>	</div>
		</td>
		
		</c:forEach>
	</tr>
	
	</table>
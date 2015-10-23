<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<body>
	<table width=100% cellpadding="0" cellspacing="0">
	<tr>
		<td>
			Best 상품
		</td>
	</tr>
	
	<tr>
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
				<div style="text-align:center;"><a href=""><img src='' width=200 class="" onerror=this.src='' /></a></div>
				<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
				<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">프리저브드 플라워 DIY</a></div>		<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">5,800원</a> </div>
				<div></div>	</div>
		</td>
		
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
				<div style="text-align:center;"><a href=""><img src='' width=200 class="" onerror=this.src='' /></a></div>
				<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
				<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">프리저브드 플라워 DIY</a></div>		<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">5,800원</a> </div>
				<div></div>	</div>
		</td>
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
				<div style="text-align:center;"><a href=""><img src='' width=200 class="" onerror=this.src='' /></a></div>
				<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
				<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">프리저브드 플라워 DIY</a></div>		<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">5,800원</a> </div>
				<div></div>	</div>
		</td>
	<tr>
		<td>
			Expensive 상품
		</td>
	</tr>	
		
		
	<tr>
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
				<div style="text-align:center;"><a href=""><img src='' width=200 class="" onerror=this.src='' /></a></div>
				<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
				<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">프리저브드 플라워 DIY</a></div>		<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">5,800원</a> </div>
				<div></div>	</div>
		</td>
		
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
				<div style="text-align:center;"><a href=""><img src='' width=200 class="" onerror=this.src='' /></a></div>
				<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
				<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">프리저브드 플라워 DIY</a></div>		<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">5,800원</a> </div>
				<div></div>	</div>
		</td>
		<td align=center valign=top width="25%" style="padding-bottom:25px;">
				<div style="text-align:center;"><a href=""><img src='' width=200 class="" onerror=this.src='' /></a></div>
				<div style="padding:14px 0 0 6px; text-align:center; width:200px;">
				<div><a href="" style="display:inline-block; color:#000; font-size:11px; padding:0 0 3px 0;">프리저브드 플라워 DIY</a></div>		<div style="padding-bottom:3px;"><a href="" style="display:inline-block; color:#000; font-weight:bold; padding:0 0 3px 0; font-size:11px">5,800원</a> </div>
				<div></div>	</div>
		</td>
	
	</tr>
	</table>
	
	<table>
			<tr>
				<td>
					최근 공지사항
				</td>
				<td>
					<a href="../notice/notice_list.bins">+ ALL</a>
				</td>
			</tr>
		</table>
		<ul>
		<c:if test="${noticeList.size() -1 >= 0}">
       <c:forEach  begin="0" end="${noticeList.size()-1}" var="i">
       		<li>
	            <a href="../notice/notice_read.bins?articleId=${noticeList.get(i).articleId}">
	           		    <span>
							${noticeList.get(i).subject}
						</span>
						<span>
							${noticeList.get(i).regdate}
						</span>
	  			</a>
  			</li>
   		</c:forEach>
   		</c:if>
		<!-- 
		
		
			<li>
				<a href="">
					<span>
						글제목 보여주는 부분 
					</span>
					<span>
						글 작성일 보여주는 부분
					</span>
				</a>
			</li>	 -->	
			
		</ul>		
		
		<table>
			<tr>
				<td>
					최근 문의 사항
				</td>
				<td>
					<a href="../qna/qna_view.bins">+ ALL</a>
				</td>
			</tr>
		</table>			
		<ul>		
	<%-- 		<c:forEach  begin="0" end="${qnaList.size()-1}" var="i">
       			<li>
	            	<a href="../qna/qna_read.bins?articleId=${qnaList.get(i).articleId}">
	           			    <span>
								${qnaList.get(i).subject}
							</span>
							<span>
								${qnaList.get(i).regdate}
							</span>
	  				</a>
  				</li>
   			</c:forEach> --%>
		</ul>					 
	

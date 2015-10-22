<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">

<!-- 
   레이아웃 작성자 : 조현빈 
   레이아웃 수정최종 날짜 : 2015 -10 -20 : 8시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
      <form name=""  id="" action="" onsubmit="" method="post">
            <table class="table">
                  <colgroup>
                     <col width="75" />
                     <col width="600" />
                     <col width="110" />
                     <col width="130" />
                     <col width="85" />
                  </colgroup>
                  <tr class="active">
                     <th>번호</th>
                     <th>제목</th>
                     <th>작성자</th>
                     <th>작성일</th>
                     <th>조회수</th>
                  </tr>
                  
                  
                  
                   <c:forEach var="article" items="${articleList}" >
   						<tr>
   						  <td>0</td>
   						    <td class="">
                    		    <a href="../notice/notice_read.bins?articleId=${article.articleId}">${article.subject}</a>
                   		  </td>
                    	  <td><span class="">${article.memberId}</span></td>
                   		  <td>${article.regdate}</td>
                    	  <td>${article.hitcount}</td>
  					 	</tr>
   					</c:forEach>

               </table>
      </form>
	  
	  <form class="form-inline" method="get">
         <div class="form-group">
            <select class="form-control" style="width:95px;" name="sfl" id="">
               <option value="subject">제목</option>
               <option value="subject">내용</option>
               <option value="writer">작성자</option>
            </select>
            <input type="text"  class="form-control" style="width:200px;" name="stx" value="" required id="stx" />
            <input onclick="location.href='../notice/notice_list.bins'" type="button" class="btn btn-default" value="검색"/>
 				 
 		
 			<c:if test="${cookie.loginId.value.equals('admin')}" >
				<input onclick="location.href='../notice/notice_write.bins'" type="button" class="btn btn-default" value="글쓰기" style="float: right;" />
			</c:if>

         </div>
      </form>
	  
	  <div class="text-center">
	      <ul class="pagination">
	      	 <li><a href="" >&lt;&lt;</a></li>
	         <li><a href="" >&lt;</a></li>
	         <li><a href="">1</a></li>
	         <li><a href="">2</a></li>
	         <li><a href="">3</a></li>
	         <li><a href="">4</a></li>
	         <li><a href="">5</a></li>
	         <li><a href="">6</a></li>
	         <li><a href="" >&gt;</a></li>
	         <li><a href="" >&gt;&gt;</a></li>
	      </ul>
      </div>
</div>
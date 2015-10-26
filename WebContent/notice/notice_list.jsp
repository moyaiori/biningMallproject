<%@page import="kr.or.kosta.shopping.common.web.page.Pagination"%>
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

<p class="j_p">
				<font class="j_txt">N </font>O T I C E </p>
<div class="container" style="margin-left: 280px">
    
            <table class="table" style="width: 70%">
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
                  
                  
                  <c:if test="${listSize - 1 >= 0}">
                   <c:forEach  begin="0" end="${articleList.size()-1}" var="i">
   						<tr>
   						  <td>${listSize-i}</td>
   						    <td class="">
                    		    <a href="../notice/notice_read.bins?articleId=${articleList.get(i).articleId}">${articleList.get(i).subject}</a>
                   		  </td>
                    	  <td><span class="">${articleList.get(i).memberId}</span></td>
                   		  <td>${articleList.get(i).regdate}</td>
                    	  <td>${articleList.get(i).hitcount}</td>
  					 	</tr>
   					</c:forEach>
   				  </c:if>

               </table>

	  <form class="form-inline" method="post" action="../notice/notice_list.bins" style="width: 70%">
         <div class="form-group">
            <select class="form-control" name="searchType" id="">
               <option value="subject">제목</option>
               <option value="content">내용</option>
               <option value="member_id">작성자</option>
            </select>
            <input type="text"  class="form-control" style="width:200px;" name="searchValue"  required id="stx" />
 			 <input  type="submit" class="btn btn-danger" value="검색"/> 
 		
 			<c:if test="${cookie.loginId.value.equals('admin')}" >
				<input onclick="location.href='../notice/notice_write.bins'" type="button" class="btn btn-danger" value="글쓰기" style="float: right; margin-left: 350;" />
			</c:if>

         </div>
      </form>
 <div class="text-center" style="padding-right: 330px;">
   ${pageNation}
  </div>
  </div>
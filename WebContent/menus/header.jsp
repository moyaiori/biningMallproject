<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 충돌 나는 것 같은데 이유를 찾아야 한다. -->

<!-- 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>
 -->

<div class="logoRight">
	<ul>
		<li><a  href = "../index.bins">Home</a></li>
		<c:choose>
			<c:when test="${cookie.loginId == null}"><li><a style="cursor:pointer" data-toggle="modal" data-target="#myModal">Login</a></li></c:when>
			<c:when test="${cookie.loginId != null}"><li><a style="cursor:pointer" href = "../user/logout.bins">Logout</a></li></c:when>
		</c:choose>
		<c:if test="${cookie.loginId == null}">
			<li><a href = "../user/regist.bins">Join</a></li>
		</c:if>
		<li><a href="../notice/notice_list.bins" >공지사항</a></li>
		<li><a href= "../qna/qna_view.bins">QnA</a></li>
		<c:if test="${cookie.loginId != null}">
			<li><a href= "../cart/cartView.bins?loginId=${cookie.loginId.value}">Cart</a></li>
			<li><a href= "../user/myInfo.bins?loginId=${cookie.loginId.value}">MyPage</a></li>
		</c:if>
	</ul>
</div>
<div class="logoTop">
	<a  href = "../index.bins"><img style="width: 800px;" alt="WelCome" src="../images/logo.gif"></a>
</div>
<nav class="navbar navbar-custom navbar-static-top" style="margin-bottom: 30px">
  <div class="container-fluid">
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="../menus/intro.bins"><h4>Bin's Berger 소개</h4></a></li>
        <li><a href="../notice/notice_list.bins"><h4>Bin's Berger 공지사항</h4></a></li>
        	 <!--  <li><button onclick="location.href='../notice/notice.bins'"><h4>Bin's Berger 공지사항</h4></button></li> -->
       		<!-- <li><button onclick="location.href='../product/product_list_berger.bins' "><h4>Bin's Berger 버거</h4>    </button>--> 
       		 <li> <a href="../product/product_list_berger.bins"><h4>Bin's Berger 버거</h4></a></li> 
        <li><a href="../product/topping_list.bins"><h4>Bin's Berger 토핑</h4></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<div class="container">
	<div class="modal fade" id="myModal" role="dialog">
	  <div class="modal-dialog" role="document">
	  
		<div class="modal-content">
			<div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		       	 <p class="j_p modal-title"> <font class="j_txt">L </font>O G I N</p>
	        </div>
	      
		  <div class="modal-body">
			<form action="../user/loginProc.bins" method="post">
				<div class="container col-md-8 col-md-offset-2">
			
						<table class="table">
							<colgroup>
								<col width="200" />
								<col width="200" />
								<col width="200" />
							</colgroup>
							<tr>
								<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">아이디</td>
								<td><input type="text" class="form-control" name="memberId"></td>
								<td></td>
							<tr>
								<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">비밀번호</td>
								<td><input type="password" class="form-control" name="passwd"></td>
								<td><input type="submit" class="btn btn-danger" value="로그인"></td></tr>
							<tr>
								<td colspan='2' style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">Bin's회원이 되시면 편리한 이용이 가능 합니다.</td>
								<td><input onclick="location.href='../user/regist.bins'" type="button" class="btn btn-danger " value="회원가입" ></td>
							</tr>
							<tr>
								<td colspan='2' style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">회원아이디와 비밀번호가 생각 나지 않으세요?</td>
								<td><input onclick="location.href='../user/userinforsearch.bins'" type="button" class="btn btn-danger" value="ID/PW찾기" size="20"></td>
							</tr>
							<tr>
							<td></td>
							<td></td>
							<td></td>
							</tr>	
						</table>
				</div>
			</form>
			</div>
			<div class="modal-footer">
	        	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
	        </div>
		</div>
		
	  </div>
	</div>
	</div>
	

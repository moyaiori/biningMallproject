<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../style/header.css">

<div class="logoRight">
	<ul>
		<li><a  href = "../index.bins">Home</a></li>
		<c:choose>
			<c:when test="${cookie.loginId == null}"><li><a href = "../user/login.bins">Login</a></li></c:when>
			<c:when test="${cookie.loginId != null}"><li><a href = "../user/logout.bins">Logout</a></li></c:when>
		</c:choose>
		<c:if test="${cookie.loginId == null}">
			<li><a href = "../user/regist.bins">Join</a></li>
		</c:if>
		<li><a href="../notice/notice_list.bins" >공지사항</a></li>
		<li><a href= "../qna/qna_view.bins">QnA</a></li>
		<c:if test="${cookie.loginId != null}">
			<li><a href= "../cart/cartView.bins?loginId=${cookie.loginId.value}">Cart</a></li>
			<li><a href= "../cart/cartView.bins?loginId=${cookie.loginId.value}">MyPage</a></li>
		</c:if>
	</ul>
</div>
<div class="logoTop">
	<a  href = "../index.bins"><img style="width: 800px;" alt="WelCome" src="../images/mainlogo.jpg"></a>
</div>
<nav class="navbar navbar-custom navbar-static-top" style="margin-bottom: 70px">
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
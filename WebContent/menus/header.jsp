<%@ page contentType="text/html; charset=utf-8"%>

<style>

.navbar .navbar-nav {
    display: inline-block;
    float: none;
}

.navbar .navbar-collapse {
    text-align: center;
}

.navbar-custom {
	background-color:#fff;
    color:#ffffff;
  	border-radius:0;
  	border-top: 2px solid #D0D0D0;
  	border-bottom: 2px solid #D0D0D0;
}
  
.navbar-custom .navbar-nav > li > a {
  	color:black;
  	padding-left:20px;
  	padding-right:20px;
}
.navbar-custom .navbar-nav > .active > a, .navbar-nav > .active > a:hover, .navbar-nav > .active > a:focus {
    color: #ffffff;
	background-color:transparent;
}
      
.navbar-custom .navbar-nav > li > a:hover, .nav > li > a:focus {
    text-decoration: none;
    background-color: #E6E6E6;
}
      
.navbar-custom .navbar-brand {
  	color:#eeeeee;
}
.navbar-custom .navbar-toggle {
  	background-color:#eeeeee;
}
.navbar-custom .icon-bar {
  	background-color:#E6E6E6;
}

.logoTop{
	text-align: center;
	padding-top:4em;
	padding-bottom: 2em;
}

.logoRight{
	float: right;
	padding-top:1em;
}

.logoRight ul li{
	display: inline;
	list-style-type: none;
	padding-right: 20px;
}

</style>
<div class="logoRight">
	<ul>
		<li><a>Home</a></li>
		<li><a href = "../user/login.bins">Login</a></li>
		<li><a href="../notice/notice.bins" >공지사항</a></li>
		<li><a>QnA</a></li>
	</ul>
</div>
<div class="logoTop">
	<img alt="WelCome" src="../images/googlelogo.png">
</div>
<nav class="navbar navbar-custom navbar-static-top">
  <div class="container-fluid">
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#"><h4>Bin's Berger 소개</h4></a></li>
        <li><a href="../notice/notice_list.bins"><h4>Bin's Berger 공지사항</h4></a></li>
        	 <!--  <li><button onclick="location.href='../notice/notice.bins'"><h4>Bin's Berger 공지사항</h4></button></li> -->
       		<!-- <li><button onclick="location.href='../product/product_list_berger.bins' "><h4>Bin's Berger 버거</h4>    </button>--> 
       		 <li> <a href="../product/product_list_berger.bins"><h4>Bin's Berger 버거</h4></a></li> 
        <li><a href="#"><h4>Bin's Berger 토핑</h4></a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
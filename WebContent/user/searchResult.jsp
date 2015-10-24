<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootswatch.min.css">
<style type="text/css">
.error-header {
	max-width: 500px;
	height:80px;
	padding: 15px 29px 25px;
	margin: 0 auto;
	background-color: #ffb468;
	color: white;
	text-align: left;
	-webkit-border-radius: 15px 15px 0px 0px;
	-moz-border-radius: 15px 15px 0px 0px;
	border-radius: 15px 15px 0px 0px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.error-body {
	max-width: 500px;
	padding: 29px;
	margin: 0 auto 20px;
	background-color: #EAEAEA;
	-webkit-border-radius: 0px 0px 15px 15px;
	-moz-border-radius: 0px 0px 15px 15px;
	border-radius: 0px 0px 15px 15px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.error-heading {
	margin-bottom: 15px;
}

.error-btn {
	text-align: center;
	padding-top: 20px;
}

</style>
	<div class="container">
		
		<div class="page-header container col-md-8 col-md-offset-2">
			<header>
				<c:if test="${searchType.equals('id')}">
					<h2>아이디 찾기</h2>
				</c:if>
				<c:if test="${searchType.equals('passwd')}">
					<h2>비밀번호 찾기</h2>
				</c:if>
			</header>
		</div>
		
		<br><br><br><br><br><br><br><br>
		
		<!-- header -->
		<div class="error-header">
			<c:if test="${searchType.equals('id')}">
				<h2 class="error-heading">아이디 찾기 결과</h2>
			</c:if>
			<c:if test="${searchType.equals('passwd')}">
				<h2 class="error-heading">비밀번호 찾기 결과</h2>
			</c:if>
				
		</div>
		<!-- body -->
		<div class="error-body">
			<c:if test="${result == true && searchType.equals('id')}">
				<p>아이디 찾기가 완료되었습니다. 이메일을 확인해주세요.</p>
			</c:if>
			<c:if test="${result == true && searchType.equals('passwd')}">
				<p>비밀번호 찾기가 완료되었습니다. 이메일을 확인해주세요.</p>
			</c:if>
			<c:if test="${result == false}">
				<p>회원이 아닙니다. 회원가입 후 이용해주세요.</p>
			</c:if>

			<div class="row error-btn">	
				<button class="btn btn-large btn-default" onclick="window.location='../index.bins'">홈으로</button>
				<c:if test="${result == true}">
					<button class="btn btn-large btn-default" onclick="window.location='../user/login.bins'">로그인</button>
				</c:if>
				<c:if test="${result == false}">
					<button class="btn btn-large btn-default" onclick="window.location='../user/regist.bins'">회원가입</button>
				</c:if>
			</div>
		</div>
	</div>
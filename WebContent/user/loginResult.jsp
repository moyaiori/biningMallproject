<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<title>Bi's Berger</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootswatch.min.css" rel="stylesheet">
<style type="text/css">

</head>



<body>
	<script src="js/jquery-2.1.0.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootswatch.js"></script>
	<div class="container">

		<!-- header -->
		<div class="error-header">
			<h2 class="error-heading">로그인 실패</h2>
		</div>
		<!-- body -->
		<div class="error-body">

			<h3>로그인에 실패하였습니다.</h3>
			<p>아이디 혹은 비밀번호를 확인해주세요</p>
			<p>3초후 메인페이지로 이동합니다.</p>

			<div class="row error-btn">
				<button class="btn btn-large btn-default" onclick="loationHome()">홈으로 이동</button>
			</div>
		</div>
		<!-- footer -->
		<div class="error-footer">
			<p>COPYRIGHT ⓒ 2015 BINS. ALL RIGHT RESERVED.</p>
		</div>
	</div>
</body>
</html>
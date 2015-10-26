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
body {
	padding-top: 100px;
	padding-bottom: 40px;
	background-color: #ecf0f1;
}

.error-header {
	max-width: 500px;
	padding: 15px 29px 25px;
	margin: 0 auto;
	background-color: #e74c3c;
	color: white;
	text-align: left;
	-webkit-border-radius: 15px 15px 0px 0px;
	-moz-border-radius: 15px 15px 0px 0px;
	border-radius: 15px 15px 0px 0px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.error-footer {
	max-width: 500px;
	margin: 0 auto 20px;
	padding-left: 10px;
}

.error-body {
	max-width: 500px;
	padding: 29px;
	margin: 0 auto 20px;
	background-color: #fff;
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
</head>

<script type="text/javascript">

window.onload = function(){
	
	setInterval(function(){
		window.loation.href = "../index.bins";
	}, 3000)
}

function loationHome(){
	window.loation.href = "../index.bins";
}

</script>

<body>
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

	<script src="js/jquery-2.1.0.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootswatch.js"></script>
</body>
</html>
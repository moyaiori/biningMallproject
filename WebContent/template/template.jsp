<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="utf-8">
<title>Bin's Berger Mall</title>
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style>
.table>tbody>tr>td{
	vertical-align: middle;
	font-family:hy강m;
	font-size: 12;
}

form {
	vertical-align: middle;
	margin: 0px auto;
	font-family:hy강m;
	font-size: 20;
	
}
</style>
<style type="text/css">

html {
    height: 100%;

    body {
        height: 100%;
        overflow: hidden;
        
	
        .container-fluid.body-content {
            position: absolute;
            top: @navbar-height;
            bottom: 30px;
            right: 0;
            left: 0;
            overflow-y: auto;
        }
    }
}

</style>
<style type="text/css">
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


<body>


	

<div>
	<%--header include --%>
	<jsp:include page="../menus/header.jsp"></jsp:include>
	
    <section>
    	<jsp:include page="${contentFile}" flush="false"/>
    </section>
     
     
    <%-- footer inclue --%>
    <jsp:include page="../menus/footer.jsp"></jsp:include>
</div>
<div class="container">
	<div class="modal fade" id="loginModal" role="dialog">
	  <div class="modal-dialog" role="document">
			<!-- header -->
			
			<!-- body -->
			<div class="modal-body container" style="margin-left:-285;">
				<div class="error-header">
					<h2 class="error-heading">로그인 실패</h2>
				</div>
				<div class="error-body">
		
					<h3>로그인에 실패하였습니다.</h3>
					<p>아이디 혹은 비밀번호를 확인해주세요</p>
					<p id="move">3초후 메인페이지로 이동합니다.</p>
		
					<div class="row error-btn">
						<button class="btn btn-large btn-default" onclick="loationHome()">홈으로 이동</button>
					</div>
				</div>
			</div>
			<!-- footer -->
    </div>
  </div>
</div>
<script type="text/javascript">
if("${result}" == 'false'){
	$(function(){
	        $('#loginModal').modal({ keyboard: false }) 
	        var i = 4;
	    	setInterval(function(){
	    		document.getElementById("move").innerHTML = i + "초후 메인페이지로 이동합니다.";
	    		i--;
	    	}, 1000)
	    	
	    	setInterval(function(){
	    		loationHome();
	    	}, 5000)
	});
}
function loationHome(){
	window.location.href = "../index.bins";
}
</script>
</body>
</html>
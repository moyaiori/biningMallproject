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
<!-- 충돌 나는 것 같은데 이유를 찾아야 한다. -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

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



</body>
</html>
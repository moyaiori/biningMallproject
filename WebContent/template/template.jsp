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
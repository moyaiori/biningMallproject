<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="utf-8">
<title>Bin's Berger Mall</title>
</head>
<body>

<div class="wrapper">
	<%--header include --%>
	<jsp:include page="../menus/header.jsp"></jsp:include>

    <section>
    	<jsp:include page="${contentFile }"/>
    </section>
    
    <%-- footer inclue --%>
    <jsp:include page="../menus/footer.jsp"></jsp:include>

</div>

</body>
</html>
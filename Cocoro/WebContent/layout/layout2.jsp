<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here<decorator:title /> </title>
<style type="text/css">
body{
	width: 100%;
	height: 100%;
	overflow-x: hidden; 
}
</style>
<decorator:head />
</head>

<body>
	<jsp:include page="header.jsp" />
	스판스판스판스판
	<decorator:body />
	<jsp:include page="footer.jsp" />
</body>
</html>
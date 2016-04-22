<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body{
	width: 100%;
	height: 100%;
	overflow-x: hidden; 
}
</style>
</head>
<%
	String main = null;
	if(main == null){
		main = "Main.jsp";
	}
	else{
		main = request.getParameter("Main");
	}
%>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="<%=main%>" />
	<jsp:include page="footer.jsp" />
</body>
</html>
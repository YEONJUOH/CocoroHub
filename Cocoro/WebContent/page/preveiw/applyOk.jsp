<%@page import="cocoro.studygroup.service.StudyCRUDService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	int u_id = 0; /* session.getAttribute("u_id"); */
	int s_id = 0;
	int rank_for_apply = 0;
	
	String study_id = request.getParameter("s_id");
	System.out.println(study_id+"갓상효");
	if(study_id != null)
	{
		s_id = Integer.parseInt(study_id);
	}
	
	String rank = request.getParameter("rank_for_apply");
	if(rank != null)
	{
		rank_for_apply = Integer.parseInt(rank);
	}
	
	StudyCRUDService service = StudyCRUDService.getInstance();
	int re = service.applyService(u_id, s_id, rank_for_apply);

	if(re > 0)
	{
		response.sendRedirect("list.jsp");
	}
	else
	{
		response.sendRedirect("previewStudy.jsp");
	}

%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
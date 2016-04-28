<%@page import="org.apache.mahout.cf.taste.common.TasteException"%>
<%@page import="org.apache.mahout.cf.taste.recommender.RecommendedItem"%>
<%@page import="java.util.List"%>
<%@page
	import="org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator"%>
<%@page
	import="org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender"%>
<%@page import="org.apache.mahout.cf.taste.similarity.ItemSimilarity"%>
<%@page
	import="org.apache.mahout.cf.taste.impl.similarity.LogLikelihoodSimilarity"%>
<%@page
	import="org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel"%>
<%@page import="org.apache.mahout.cf.taste.model.JDBCDataModel"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;

			Context iniCtx = new InitialContext();
			Context envCtx = (Context) iniCtx.lookup("java:/comp/env");
			DataSource ds = (DataSource) envCtx.lookup("jdbc/oracle");
            System.out.println("ok");
			/* JDBCDataModel dm = new MySQLJDBCDataModel(ds, "SEARCHINFO", "u_id", "s_id", "s_hit", null); */
			
			

			
	%>
</body>
</html>
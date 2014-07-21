<%@page import="com.empadmin.server.classes.*"%>
<%
	int collegeCodeP = Integer.parseInt(request.getParameter("collegeCode"));
	out.print(College.getCollege(collegeCodeP).getCollegeName());
%>
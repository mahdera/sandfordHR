<%@page import="com.empadmin.server.classes.*" %>
<%
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	out.print(College.getCollege(collegeId).getCollegeName());
%>
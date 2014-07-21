<%@page import="com.empadmin.server.classes.*" %>
<%
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	Job.delete(jobId);	
%>



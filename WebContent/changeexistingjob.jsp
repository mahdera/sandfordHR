<%@page import="com.empadmin.server.classes.*" %>
<%
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	out.print(Job.getJob(jobId).getJobClassification()+" : "+Job.getJob(jobId).getJobClassificationNumber());
%>
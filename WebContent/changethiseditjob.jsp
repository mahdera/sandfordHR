<%@page import="com.empadmin.server.classes.*"%>
<%
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	Job job = Job.getJob(jobId);
	out.println(job.getJobClassificationNumber()+" : "+job.getJobClassification());
%>
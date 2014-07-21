<%@page import="com.empadmin.server.classes.*"%>
<%
	String jobTitle = request.getParameter("jobTitle");
	String jobClassification = request.getParameter("jobClassification");
	String jobClassificationNumber = request.getParameter("jobClassificationNumber");
	String jobDescription = request.getParameter("jobDescription");
	int jobId = Integer.parseInt(request.getParameter("jobId"));
	
	Job job = Job.getJob(jobId);
	job.setJobTitle(jobTitle);
	job.setJobClassification(jobClassification);
	job.setJobClassificationNumber(jobClassificationNumber);
	job.setJobDescription(jobDescription);
	
	Job.update(job);				
%>

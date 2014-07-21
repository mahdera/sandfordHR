<%@page import="com.empadmin.server.classes.*" %>
<%
	String jobTitle = request.getParameter("jobTitle");
	String jobClassification = request.getParameter("jobClassification");
	String jobClassificationNumber = request.getParameter("jobClassificationNumber");
	String jobDescription = request.getParameter("jobDescription");
	
	
	Job job = new Job(jobTitle,jobClassification,jobClassificationNumber,jobDescription);
	job.save();				
%>
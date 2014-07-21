<%@page import="com.empadmin.server.classes.*"%>
<%
	long performanceAppraisalId = Long.parseLong(request.getParameter("performanceAppraisalId"));
	PerformanceAppraisal.delete(performanceAppraisalId);
%>
<p class="msg done">Performance appraisal record deleted successfully!</p>
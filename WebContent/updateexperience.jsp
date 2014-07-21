<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%
	long exId = Long.parseLong(request.getParameter("exId"));
	String jobId = request.getParameter("jobId");
	Date startingFrom = Date.valueOf(request.getParameter("startingFrom"));
	Date upto = Date.valueOf(request.getParameter("upto"));
	String place = request.getParameter("place");
	//out.print(exId+":"+jobId+":"+startingFrom+":"+upto+":"+place);
	Experience.updateExperience(exId,jobId,startingFrom,upto,place);
%>
<p class="msg done">Experience updated successfully!</p>
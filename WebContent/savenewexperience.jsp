<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	String jobId = request.getParameter("jobId");
	Date startingFrom = Date.valueOf(request.getParameter("startingFrom"));
	Date upto = Date.valueOf(request.getParameter("upto"));
	String place = request.getParameter("place");
	Experience exObj = new Experience(place,startingFrom,upto,jobId,empRecId);
	exObj.addExperience();
%>
<p class="msg done">New experience saved successfully!</p>

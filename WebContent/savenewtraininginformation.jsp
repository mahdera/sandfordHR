<%@page import="com.empadmin.server.classes.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	String t = request.getParameter("t");
	String placeOfTraining = request.getParameter("placeOfTraining");
	String duration = request.getParameter("duration");
	String yearOfTraining = request.getParameter("yearOfTraining");
	TrainingInformation tInfo = new TrainingInformation(t,placeOfTraining,duration,yearOfTraining,empRecId);
	tInfo.addTrainingInformation();
%>
<p class="msg done">Training Information saved successfully!</p>

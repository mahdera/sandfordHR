<%@page import="com.empadmin.server.classes.*" %>
<%
	long tId = Long.parseLong(request.getParameter("tId"));
	String t = request.getParameter("training");
	String placeOfTraining = request.getParameter("placeOfTraining");
	String duration = request.getParameter("duration");
	String yearOfTraining = request.getParameter("yearOfTraining");
	TrainingInformation.updateTrainingInformation(tId,t,placeOfTraining,duration,yearOfTraining);
%>
<p class="msg done">Training information updated successfully!</p>
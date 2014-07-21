<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long eduId = Long.parseLong(request.getParameter("eduId"));
	String nameOfInstitution = request.getParameter("nameOfInstitution");
	int fieldOfStudyId = Integer.parseInt(request.getParameter("fieldOfStudyId"));
	String educationLevel = request.getParameter("educationLevel");
	Date dateOfAward = Date.valueOf(request.getParameter("dateOfAward"));
	//out.print(eduId+":"+nameOfInstitution+":"+fieldOfStudyId);
	EducationInformation.updateEducationInformation(eduId,nameOfInstitution,fieldOfStudyId,educationLevel,dateOfAward);
%>
<p class="msg done">Education information updated successfully!</p>
<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	String nameOfInstitution = request.getParameter("nameOfInstitution");
	int fieldOfStudyId = Integer.parseInt(request.getParameter("fieldOfStudyId"));
	String educationLevel = request.getParameter("educationLevel");
	Date dateOfAward = Date.valueOf(request.getParameter("dateOfAward"));
	//out.print(empRecId+":"+nameOfInstitution+":"+fieldOfStudyId);
	EducationInformation newEduInfoObj = new EducationInformation(nameOfInstitution,
			fieldOfStudyId,educationLevel,dateOfAward,empRecId);
	newEduInfoObj.addEducationInformation();
%>
<p class="msg done">New education information saved successfully!</p>
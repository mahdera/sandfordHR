<%@page import="com.empadmin.server.classes.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String relationship = request.getParameter("relationship");
	String homeTelephone = request.getParameter("homeTelephone");
	String mobile = request.getParameter("mobile");
	String workTelephone = request.getParameter("workTelephone");
	
	EmergencyContact emergencyContact = new EmergencyContact(firstName,lastName,relationship,homeTelephone,mobile,workTelephone,empRecId);
	emergencyContact.addEmergencyContact();
%>
<p class="msg done">New emergency contact saved successfully!</p>


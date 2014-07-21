<%@page import="com.empadmin.server.classes.*" %>
<%
	String maritalStatus = request.getParameter("maritalStatus");
	MaritalStatus m = new MaritalStatus(maritalStatus);
	m.addMaritalStatus();			
%>
<p class="msg done">Marital status saved successfully!</p>
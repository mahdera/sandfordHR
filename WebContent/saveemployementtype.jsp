<%@page import="com.empadmin.server.classes.*" %>
<%
	String employementType = request.getParameter("employementType");
	EmployementType emptType = new EmployementType(employementType);
	emptType.addEmployementType();	
%>
<p class="msg done">Employement type saved successfully!</p>
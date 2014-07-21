<%@page import="com.empadmin.server.classes.*"%>
<%
	int maritalStatusId = Integer.parseInt(request.getParameter("maritalStatusId"));
	String maritalStatus = request.getParameter("maritalStatus");
	
	MaritalStatus.updateMaritalStatus(maritalStatusId,maritalStatus);		
%>
<%@include file="showlistofmaritalstatusesforedit.jsp" %>
<p class="msg done">Marital Status updated successfully!</p>
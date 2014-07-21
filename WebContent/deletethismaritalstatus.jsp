<%@page import="com.empadmin.server.classes.*" %>
<%
	int maritalStatusId = Integer.parseInt(request.getParameter("maritalStatusId"));
	MaritalStatus.deleteMaritalStatus(maritalStatusId);		
%>
<%@include file="showlistofmaritalstatusesfordelete.jsp" %>
<p class="msg done">Marital Status deleted successfully!</p>


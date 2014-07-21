<%@page import="com.empadmin.server.classes.*"%>
<%
	long benefitManagementId = Long.parseLong(request.getParameter("benefitManagementId"));
	BenefitManagement.deleteBenefitManagement(benefitManagementId);
%>
<p class="msg done">Benefit Management Deleted Successfully!</p>
<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long benefitManagementId = Long.parseLong(request.getParameter("benefitManagementId"));
	String benefitName = request.getParameter("benefitName");
	Date benefitDate = Date.valueOf(request.getParameter("benefitDate"));
	String description = request.getParameter("description");
	
	BenefitManagement.updateBenefitManagement(benefitManagementId, benefitName, benefitDate, description);
%>
<p class="msg done">Benefit Management Update Successfully!</p>
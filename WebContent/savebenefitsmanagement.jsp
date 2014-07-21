<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	String benefitName = request.getParameter("benefitName");
	Date benefitDate = Date.valueOf(request.getParameter("benefitDate"));
	String description = request.getParameter("description");
	BenefitManagement benefitManagement = new BenefitManagement(benefitName,benefitDate,description,employeeId);
	benefitManagement.addBenefitManagement();
%>
<%@include file="showbenefitsmanagementform.jsp"%>
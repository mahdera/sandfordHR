<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	int transferedFromDivisionId = Integer.parseInt(request.getParameter("transferedFromDivisionId"));
	int transferedToDivisionId = Integer.parseInt(request.getParameter("transferedToDivisionId"));
	int transferedFromDepartmentId = Integer.parseInt(request.getParameter("transferedFromDepartmentId"));
	int transferedToDepartmentId = Integer.parseInt(request.getParameter("transferedToDepartmentId"));
	String transferDetail = request.getParameter("transferDetail");
	Date transferDate = Date.valueOf(request.getParameter("transferDate"));
	Transfer transfer = new Transfer(employeeId,transferedFromDivisionId,transferedToDivisionId,transferedFromDepartmentId,transferedToDepartmentId,
			transferDetail,transferDate);
	transfer.addTransfer();
	//now its time to affect the where the employee works...
	WorksAt.updateWorksAtForEmployee(employeeId, 1, transferedToDivisionId, transferedToDepartmentId);
	
%>
<%@include file="showtransfermanagementform.jsp"%>
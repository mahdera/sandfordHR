<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Date startingFrom = Date.valueOf(request.getParameter("startingFrom"));
	Date upto = Date.valueOf(request.getParameter("upto"));
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveTypeId"));
	float leaveFromLastLeavePeriod = Float.parseFloat(request.getParameter("leaveFromLastLeavePeriod"));
	float leaveTaken = Float.parseFloat(request.getParameter("leaveTaken"));
	float leaveToNextLeavePeriod = Float.parseFloat(request.getParameter("leaveToNextLeavePeriod"));
	
	LeaveRequest leave = new LeaveRequest(startingFrom,upto,leaveTypeId,leaveFromLastLeavePeriod,leaveTaken,leaveToNextLeavePeriod,employeeId);
	leave.addLeave();
%>
<%@include file="showleavemanagementform.jsp"%>
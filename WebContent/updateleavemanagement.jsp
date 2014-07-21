<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long leaveId = Long.parseLong(request.getParameter("leaveId"));
	Date startingFrom = Date.valueOf(request.getParameter("startingFrom"));
	Date upto = Date.valueOf(request.getParameter("upto"));
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveTypeId"));
	float leaveFromLastLeavePeriod = Float.parseFloat(request.getParameter("leaveFromLastLeavePeriod"));
	float leaveTaken = Float.parseFloat(request.getParameter("leaveTaken"));
	float leaveToNextLeavePeriod = Float.parseFloat(request.getParameter("leaveToNextLeavePeriod"));
	
	LeaveRequest.updateLeave(leaveId, startingFrom, upto, leaveTypeId, leaveFromLastLeavePeriod, leaveTaken, leaveToNextLeavePeriod);
%>
<p class="msg done">Leave Management Update Successfully!</p>